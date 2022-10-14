close all;
    clc;
    
    im = imread('Dataset/2clubs.jpg');
    if size(im,1) < size(im,2)
        im = imrotate(im,90);
    end
    updated_img = im;

    spades = imread('Templates\Suits\Spades.jpg');
    hearts = imread('Templates\Suits\Hearts.jpg');
    diamonds = imread('Templates\Suits\Diamonds.jpg');
    clubs = imread('Templates\Suits\Clubs.jpg');

    rank_A = imread('Templates\Ranks\A.jpg');
    rank_2 = imread('Templates\Ranks\2.jpg');
    rank_3 = imread('Templates\Ranks\3.jpg');
    rank_4 = imread('Templates\Ranks\4.jpg');
    rank_5 = imread('Templates\Ranks\5.jpg');
    rank_6 = imread('Templates\Ranks\6.jpg');
    rank_7 = imread('Templates\Ranks\7.jpg');
    rank_8 = imread('Templates\Ranks\8.jpg');
    rank_9 = imread('Templates\Ranks\9.jpg');
    rank_10 = imread('Templates\Ranks\10.jpg');
    rank_J = imread('Templates\Ranks\J.jpg');
    rank_Q = imread('Templates\Ranks\Q.jpg');
    rank_K = imread('Templates\Ranks\K.jpg');

    shape_names = {'HEARTS','DIAMONDS','SPADES','CLUBS'};
    rank_names = {'A','2','3','4','5','6','7','8','9','10','J','Q','K'};

    suits = {hearts,diamonds,spades,clubs};
    ranks = {rank_A,rank_2,rank_3,rank_4,rank_5,rank_6,rank_7,rank_8,rank_9,rank_10,rank_J,rank_Q,rank_K};
        for i=1:length(suits)
        suits{i} = pre_template(suits{i});
    end

    for i=1:length(ranks)
        ranks{i} = pre_template(ranks{i});
    end
    
    
    threshold = graythresh(im);
    im = im2bw(im,threshold);
    function template=pre_template(im)
    template = 0 ;
    threshold = graythresh(im);
    im = im2bw(im,threshold);
    template = im;
end