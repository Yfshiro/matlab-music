% 生成和弦函数
function chord_audio = generate_chord(note_names, notes_map, duration, amplitude, fs)
    % 获取频率
    freqs = [];
    for i = 1:length(note_names)
        if ~isempty(note_names{i}) && ~strcmp(note_names{i}, 'REST')
            freqs(end+1) = notes_map(note_names{i});
        end
    end
    
    if isempty(freqs)  % 休止符
        chord_audio = zeros(1, round(duration * fs));
        return;
    end
    
    chord_audio = zeros(1, round(duration * fs));
    
    % 为每个音符生成音频并混合
    for f = freqs
        note_audio = generate_note(f, duration, amplitude/sqrt(length(freqs)), fs);
        
        % 确保长度匹配
        if length(note_audio) > length(chord_audio)
            note_audio = note_audio(1:length(chord_audio));
        elseif length(note_audio) < length(chord_audio)
            note_audio = [note_audio, zeros(1, length(chord_audio) - length(note_audio))];
        end
        
        chord_audio = chord_audio + note_audio;
    end
end