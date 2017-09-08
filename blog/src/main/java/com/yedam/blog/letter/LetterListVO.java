package com.yedam.blog.letter;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "letterList")
@XmlAccessorType(XmlAccessType.FIELD)
public class LetterListVO {
	
    @XmlElement(name = "letter")
    private List<LetterVO> letterList;

    public List<LetterVO> getLetterList() {
        return letterList;
    }

    public void setLetterList(List<LetterVO> letterList) {
        this.letterList = letterList;
    }
}
