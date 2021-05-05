import Cocoa


func timeAdder(value1 : UInt, label1 : String, value2 : UInt, label2 : String) -> (UInt, String)
{
    var value3 : UInt = 0;
    var label3 : String = "";
    
    var status1 : Bool = false
    var status2 : Bool = false
    
    // Check First Value and Label Combination
    if value1 > 1{
        switch label1 {
        case "days":
            status1 = true
        case "hours":
            status1 = true
        case "minutes":
            status1 = true
        case "seconds":
            status1 = true
        default:
            status1 = false
        }
    }else{
        switch label1 {
        case "days":
            status1 = false
        case "hours":
            status1 = false
        case "minutes":
            status1 = false
        case "seconds":
            status1 = false
        default:
            status1 = true
        }
    }
    
    // Check Second Value and Label Combination
    if value2 > 1{
        switch label2 {
        case "days":
            status2 = true
        case "hours":
            status2 = true
        case "minutes":
            status2 = true
        case "seconds":
            status2 = true
        default:
            status2 = false
        }
    }else{
        switch label2 {
        case "days":
            status2 = false
        case "hours":
            status2 = false
        case "minutes":
            status2 = false
        case "seconds":
            status2 = false
        default:
            status2 = true
        }
    }
    
    // Check Validity
    if status1 && status2 {
        //  Label1 in Day or Days
        if label1 == "day" || label1 == "days"{
            if label2 == "day" || label2 == "days" {
                value3 = value1 + value2
                label3 = "days"
            }else if label2 == "hour" || label2 == "hours"{
                value3 = (value1 * 24) + value2
                if value3 % 24 == 0 {
                    value3 = value3 / 24
                    label3 = "days"
                }else{
                    label3 = "hours"
                }
                
            }else if label2 == "minute" || label2 == "minutes"{
                value3 = (value1 * 24 * 60) + value2
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 24 == 0 {
                        value3 = value3 / 24
                        label3 = "days"
                    }else{
                        label3 = "hours"
                    }
                }else{
                    label3 = "minutes"
                }
                
            }else if label2 == "second" || label2 == "seconds"{
                value3 = (value1 * 24 * 60 * 60) + value2
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 60 == 0 {
                        value3 = value3 / 60
                        if value3 % 24 == 0 {
                            value3 = value3 / 24
                            label3 = "days"
                        }else{
                            label3 = "hours"
                        }
                    }else{
                        label3 = "minutes"
                    }
                }else{
                    label3 = "seconds"
                }
                
            }
        }else if label1 == "hour" || label1 == "hours"{
            if label2 == "day" || label2 == "days" {
                value3 = value1 + value2 * 24
                if value3 % 24 == 0 {
                    value3 = value3 / 24
                    label3 = "days"
                }else{
                    label3 = "hours"
                }
            }else if label2 == "hour" || label2 == "hours"{
                value3 = value1 + value2
                if value3 % 24 == 0 {
                    value3 = value3 / 24
                    label3 = "days"
                }else{
                    label3 = "hours"
                }
            }else if label2 == "minute" || label2 == "minutes"{
                value3 = (value1 * 60) + value2
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 24 == 0 {
                        value3 = value3 / 24
                        label3 = "days"
                    }else{
                        label3 = "hours"
                    }
                }else{
                    label3 = "minutes"
                }
            }else if label2 == "second" || label2 == "seconds"{
                value3 = (value1 * 60 * 60) + value2
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 60 == 0 {
                        value3 = value3 / 60
                        if value3 % 24 == 0 {
                            value3 = value3 / 24
                            label3 = "days"
                        }else{
                            label3 = "hours"
                        }
                    }else{
                        label3 = "minutes"
                    }
                }else{
                    label3 = "seconds"
                }
            }
        }else if label1 == "minute" || label1 == "minutes"{
            if label2 == "day" || label2 == "days" {
                value3 = value1 + value2 * 24 * 60
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 24 == 0 {
                        value3 = value3 / 24
                        label3 = "days"
                    }else{
                        label3 = "hours"
                    }
                }else{
                    label3 = "minutes"
                }
            }else if label2 == "hour" || label2 == "hours"{
                value3 = value1 + value2 * 60
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 24 == 0 {
                        value3 = value3 / 24
                        label3 = "days"
                    }else{
                        label3 = "hours"
                    }
                }else{
                    label3 = "minutes"
                }
            }else if label2 == "minute" || label2 == "minutes"{
                value3 = value1 + value2
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 24 == 0 {
                        value3 = value3 / 24
                        label3 = "days"
                    }else{
                        label3 = "hours"
                    }
                }else{
                    label3 = "minutes"
                }
            }else if label2 == "second" || label2 == "seconds"{
                value3 = (value1 * 60) + value2
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 60 == 0 {
                        value3 = value3 / 60
                        if value3 % 24 == 0 {
                            value3 = value3 / 24
                            label3 = "days"
                        }else{
                            label3 = "hours"
                        }
                    }else{
                        label3 = "minutes"
                    }
                }else{
                    label3 = "seconds"
                }
            }
        }else if label1 == "second" || label1 == "seconds"{
            if label2 == "day" || label2 == "days" {
                value3 = value1 + value2 * 24 * 60 * 60
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 60 == 0 {
                        value3 = value3 / 60
                        if value3 % 24 == 0 {
                            value3 = value3 / 24
                            label3 = "days"
                        }else{
                            label3 = "hours"
                        }
                    }else{
                        label3 = "minutes"
                    }
                }else{
                    label3 = "seconds"
                }
            }else if label2 == "hour" || label2 == "hours"{
                value3 = value1 + value2 * 60 * 60
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 60 == 0 {
                        value3 = value3 / 60
                        if value3 % 24 == 0 {
                            value3 = value3 / 24
                            label3 = "days"
                        }else{
                            label3 = "hours"
                        }
                    }else{
                        label3 = "minutes"
                    }
                }else{
                    label3 = "seconds"
                }
            }else if label2 == "minute" || label2 == "minutes"{
                value3 = value1 + value2 * 60
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 60 == 0 {
                        value3 = value3 / 60
                        if value3 % 24 == 0 {
                            value3 = value3 / 24
                            label3 = "days"
                        }else{
                            label3 = "hours"
                        }
                    }else{
                        label3 = "minutes"
                    }
                }else{
                    label3 = "seconds"
                }
            }else if label2 == "second" || label2 == "seconds"{
                value3 = value1 + value2
                if value3 % 60 == 0 {
                    value3 = value3 / 60
                    if value3 % 60 == 0 {
                        value3 = value3 / 60
                        if value3 % 24 == 0 {
                            value3 = value3 / 24
                            label3 = "days"
                        }else{
                            label3 = "hours"
                        }
                    }else{
                        label3 = "minutes"
                    }
                }else{
                    label3 = "seconds"
                }
            }
        }
        
    }else{
        value3 = 0
        label3 = ""
    }
    return (value3, label3)
}

var result : (UInt, String) = timeAdder(value1: 23, label1: "hours", value2: 60, label2: "minutes")
