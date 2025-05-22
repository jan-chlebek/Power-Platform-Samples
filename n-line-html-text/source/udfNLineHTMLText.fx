udfNLineHTMLText(_inputText: Text, _LineAmount: Number, _HTMLControlWidth: Number) : Text = 
    /*
        N-Line HTML Text Truncation
        Author: Jan Chlebek, May 2025
        Linkedin: https://www.linkedin.com/in/jan-chlebek/
        GitHub: https://github.com/jan-chlebek
    */
    
    // 5px in max-width accomodate for possible scrollbar
    // Amount of lanes is controlled with webkit-line-clamp
    $"<span style='
        font-weight: 600;
        display: -webkit-box;
        
        max-width: {_HTMLControlWidth-5}px;
        -webkit-line-clamp: {_LineAmount};
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
        text-align:left;
        line-height: 1.2;
        margin: 1px;
        padding: 2px;'>
        {_inputText}
    </span>";