% 生成单个音符的函数
function note = generate_note(freq, duration, amplitude, fs)
    if freq == 0  % 休止符
        note = zeros(1, round(duration * fs));
        return;
    end
    
    t = 0:1/fs:duration-1/fs;
    
    % 创建ADSR包络
    attack_time = min(0.02, duration/5);
    decay_time = min(0.1, duration/4);
    sustain_level = 0.7;
    release_time = min(0.1, duration/4);
    
    attack_samples = max(1, round(attack_time * fs));
    decay_samples = max(1, round(decay_time * fs));
    release_samples = max(1, round(release_time * fs));
    sustain_samples = max(0, length(t) - attack_samples - decay_samples - release_samples);
    
    % 创建包络
    envelope = [linspace(0, 1, attack_samples), ...
                linspace(1, sustain_level, decay_samples), ...
                ones(1, sustain_samples) * sustain_level, ...
                linspace(sustain_level, 0, release_samples)];
    
    % 调整包络长度与音符长度匹配
    if length(envelope) > length(t)
        envelope = envelope(1:length(t));
    elseif length(envelope) < length(t)
        envelope = [envelope, zeros(1, length(t) - length(envelope))];
    end
    
    % 生成带泛音的音色
    wave = sin(2 * pi * freq * t) + 0.5 * sin(2 * pi * 2 * freq * t) + 0.25 * sin(2 * pi * 3 * freq * t);
    
    % 归一化并应用振幅和包络
    wave = wave / 1.75; % 基础频率+泛音归一化
    note = amplitude * wave .* envelope;
end