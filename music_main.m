clc clear close all
% 设置基本参数
fs = 44100;  % 采样率（Hz）
bpm = 132;   % 每分钟拍数
beat_duration = 60/bpm;  % 一拍的持续时间（秒）

% 定义音符频率（基于A4 = 440Hz）
A4 = 440;  % 标准音高

% 创建音符频率表
notes = containers.Map();
note_names = {'C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B'};

% 为每个八度生成频率
for octave = 2:6
    for i = 1:length(note_names)
        note_name = [note_names{i}, num2str(octave)];
        % 计算与A4相差的半音数
        semitones = (octave - 4) * 12 + (i - 10);
        if i < 10
            semitones = semitones + 12;
        end
        notes(note_name) = A4 * 2^(semitones/12);
    end
end

% 定义力度标记对应的振幅
pp = 0.2;   % pianissimo
p = 0.4;    % piano
mp = 0.6;   % mezzo-piano
mf = 0.75;  % mezzo-forte
f = 0.85;   % forte
ff = 1.0;   % fortissimo

% 定义休止符
REST = 'REST';


% 使用旋律列表和伴奏列表存储音乐序列
% 以数组形式初始化
melody = {};
accompaniment = {};

%% 第53-56小节
% 第53小节 - dolce, pp
melody{end+1} = {{'F#5'}, 1/2, pp};
melody{end+1} = {{'G#5'}, 1/6, pp};
melody{end+1} = {{'F#5'}, 1/6, pp};
melody{end+1} = {{'E5'}, 1/6, pp};
melody{end+1} = {{'F#5'}, 1/2, pp};
melody{end+1} = {{'G#5'}, 1/6, pp};
melody{end+1} = {{'F#5'}, 1/6, pp};
melody{end+1} = {{'E5'}, 1/6, pp};

% 第54小节
melody{end+1} = {{'F#5'}, 1/2, pp};
melody{end+1} = {{'G#5'}, 1/6, pp};
melody{end+1} = {{'F#5'}, 1/6, pp};
melody{end+1} = {{'E5'}, 1/6, pp};
melody{end+1} = {{'F#5'}, 1/2, pp};
melody{end+1} = {{'G#5'}, 1/6, pp};
melody{end+1} = {{'F#5'}, 1/6, pp};
melody{end+1} = {{'E5'}, 1/6, pp};

% 第55小节
melody{end+1} = {{'F#5'}, 1/2, pp};
melody{end+1} = {{'G#5'}, 1/6, pp};
melody{end+1} = {{'F#5'}, 1/6, pp};
melody{end+1} = {{'E5'}, 1/6, pp};
melody{end+1} = {{'F#5'}, 1/2, pp};
melody{end+1} = {{'G#5'}, 1/6, pp};
melody{end+1} = {{'F#5'}, 1/6, pp};
melody{end+1} = {{'E5'}, 1/6, pp};

% 第56小节
melody{end+1} = {{'F#5', 'A5', 'C#6'}, 2, pp};
melody{end+1} = {{'F#5', 'A5', 'C#6'}, 2, pp};

% 伴奏 - 第53-56小节
accompaniment{end+1} = {{'B2', 'F#3', 'B3', 'D#4'}, 4, pp};
accompaniment{end+1} = {{'B2', 'F#3', 'B3', 'D#4'}, 4, pp};
accompaniment{end+1} = {{'B2', 'F#3', 'B3', 'D#4'}, 4, pp};
accompaniment{end+1} = {{'B2', 'F#3', 'B3', 'D#4'}, 4, pp};

%% 第69-72小节
% 第69小节 - 力度f
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};

% 第70小节
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};

% 第71小节
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};

% 第72小节
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1/6, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1/6, f};
melody{end+1} = {{'A4', 'C#5', 'F#5'}, 1/6, f};
melody{end+1} = {{'C#5', 'F#5', 'A5'}, 1, f};
melody{end+1} = {{'B4', 'E5', 'G#5'}, 1, f};

% 伴奏 - 第69-72小节
accompaniment{end+1} = {{'F#3', 'C#4', 'F#4'}, 2, f};
accompaniment{end+1} = {{'F#3', 'C#4', 'F#4'}, 2, f};
accompaniment{end+1} = {{'F#3', 'C#4', 'F#4'}, 2, f};
accompaniment{end+1} = {{'F#3', 'C#4', 'F#4'}, 2, f};
accompaniment{end+1} = {{'G#3', 'D#4', 'G#4'}, 2, f};
accompaniment{end+1} = {{'G#3', 'D#4', 'G#4'}, 2, f};
accompaniment{end+1} = {{'G#3', 'D#4', 'G#4'}, 2, f};
accompaniment{end+1} = {{'G#3', 'D#4', 'G#4'}, 2, f};

%% 第108-112小节
% 第108小节结尾
melody{end+1} = {{REST}, 1, p};
melody{end+1} = {{'G#5'}, 1/6, p};
melody{end+1} = {{'F#5'}, 1/6, p};
melody{end+1} = {{'E5'}, 1/6, p};

% 第109小节 - dolce, p
melody{end+1} = {{'F#5'}, 1/3, p};
melody{end+1} = {{'G#5'}, 1/3, p};
melody{end+1} = {{'A5'}, 1/3, p};
melody{end+1} = {{'F#5'}, 3, p};

% 第110小节
melody{end+1} = {{'F#5'}, 1/3, p};
melody{end+1} = {{'G#5'}, 1/3, p};
melody{end+1} = {{'A5'}, 1/3, p};
melody{end+1} = {{'E5'}, 3, p};

% 第111小节
melody{end+1} = {{'E5'}, 1/3, p};
melody{end+1} = {{'F#5'}, 1/3, p};
melody{end+1} = {{'G#5'}, 1/3, p};
melody{end+1} = {{'C#5'}, 3, p};

% 第112小节
melody{end+1} = {{'G#5'}, 1/3, p};
melody{end+1} = {{'F#5'}, 1/3, p};
melody{end+1} = {{'E5'}, 1/3, p};
melody{end+1} = {{'F#5'}, 1, p};
melody{end+1} = {{'E5'}, 1, p};
melody{end+1} = {{'D#5'}, 1, p};

% 伴奏 - 第108-112小节
accompaniment{end+1} = {{'F#3', 'C#4', 'F#4'}, 1.5, p};
accompaniment{end+1} = {{REST}, 4, p};
accompaniment{end+1} = {{REST}, 4, p};
accompaniment{end+1} = {{REST}, 4, p};
accompaniment{end+1} = {{REST}, 4, p};

%% 第160-164小节
% 第160小节 - 渐弱
melody{end+1} = {{'F#5'}, 1.5, p};
melody{end+1} = {{'G#5'}, 1/6, p};
melody{end+1} = {{'F#5'}, 1/6, p};
melody{end+1} = {{'E5'}, 1/6, p};
melody{end+1} = {{'F#5'}, 1/2, p};
melody{end+1} = {{'G#5'}, 1/6, p};
melody{end+1} = {{'F#5'}, 1/6, p};
melody{end+1} = {{'E5'}, 1/6, p};

% 第161小节
melody{end+1} = {{'F#5'}, 4, pp};

% 第162小节
melody{end+1} = {{'F#5'}, 4, pp};

% 第163小节
melody{end+1} = {{'F#5', 'A5', 'C#6'}, 4, pp};

% 第164小节 - 终止和弦
melody{end+1} = {{'F#5', 'A5', 'C#6', 'F#6'}, 4, pp};

% 伴奏 - 第160-164小节
accompaniment{end+1} = {{'B2', 'F#3', 'B3', 'D#4'}, 4, p};
accompaniment{end+1} = {{'B2', 'F#3', 'B3', 'D#4'}, 4, pp};
accompaniment{end+1} = {{'F#2', 'C#3', 'F#3', 'A3', 'C#4'}, 4, pp};
accompaniment{end+1} = {{'B2', 'F#3', 'B3', 'D#4'}, 4, pp};
accompaniment{end+1} = {{'F#2', 'C#3', 'F#3', 'A3', 'C#4', 'F#4'}, 4, pp};

% 合成旋律和伴奏
melody_audio = [];
for i = 1:length(melody)
    chord_info = melody{i};
    note_names = chord_info{1};
    duration = chord_info{2} * beat_duration;
    amplitude = chord_info{3};
    
    chord_audio = generate_chord(note_names, notes, duration, amplitude, fs);
    melody_audio = [melody_audio, chord_audio];
end

accompaniment_audio = [];
for i = 1:length(accompaniment)
    chord_info = accompaniment{i};
    note_names = chord_info{1};
    duration = chord_info{2} * beat_duration;
    amplitude = chord_info{3};
    
    chord_audio = generate_chord(note_names, notes, duration, amplitude, fs);
    accompaniment_audio = [accompaniment_audio, chord_audio];
end

% 确保两个音轨长度相同
max_length = max(length(melody_audio), length(accompaniment_audio));
if length(melody_audio) < max_length
    melody_audio = [melody_audio, zeros(1, max_length - length(melody_audio))];
end
if length(accompaniment_audio) < max_length
    accompaniment_audio = [accompaniment_audio, zeros(1, max_length - length(accompaniment_audio))];
end

% 混合两个音轨
song = melody_audio * 0.7 + accompaniment_audio * 0.5;

% 归一化以避免削波
song = song / max(abs(song)) * 0.9;

% 为避免开始和结尾的爆音，添加淡入淡出
fade_time = 0.02;  % 20毫秒
fade_samples = round(fade_time * fs);
fade_in = linspace(0, 1, fade_samples);
fade_out = linspace(1, 0, fade_samples);

% 应用淡入
song(1:length(fade_in)) = song(1:length(fade_in)) .* fade_in;

% 应用淡出
song(end-length(fade_out)+1:end) = song(end-length(fade_out)+1:end) .* fade_out;

% 播放歌曲
sound(song, fs);

% 如果需要保存为音频文件
audiowrite('secret_base_highlights.wav', song, fs);