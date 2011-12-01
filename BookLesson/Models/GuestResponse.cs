using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using System.ComponentModel;

namespace BookLesson.Models
{
    public class GuestResponse : IDataErrorInfo
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public bool? WillAttend { get; set; }
        public string Error { get { return null; } }
        public string this[string propName]
        {
            get
            {
                 if ((propName == "Name") && string.IsNullOrEmpty(Name))
                    return "Please enter your name";
                 if ((propName == "Email") && !Regex.IsMatch(Email,".+\\@.+\\..+"))
                    return "Please enter valid email addres";
                 if ((propName == "Phone") && string.IsNullOrEmpty(Phone))
                     return "Please enter u phone number";
                 if ((propName == "WillAttend") && !WillAttend.HasValue)
                     return "Please spesifity wheater you'll atted";
                return null;
            }
        }
    }
}