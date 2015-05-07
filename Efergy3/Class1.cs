using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Diagnostics;


namespace Efergy3
{
    public class MyExeption : ApplicationException
    {
        public MyExeption(string message)
            : base(message)
        { }
    }

    public interface PresmetajGodini
    {
        void Presmetaj(int g, int r);
    }
    public class Covek : PresmetajGodini
    {
        private string ime, prezime;
        private int godinaNaRaganje;
        private string mesto, drzava;

        public string Ime
        {
            get { return ime; }
            set { ime = value; }
        }

        public string Prezime
        {
            get { return prezime; }
            set { prezime = value; }
        }

        public int GodinaNaRaganje
        {
            set { godinaNaRaganje = value; }
            get { return godinaNaRaganje; }
        }

        public string Mesto
        {
            set { mesto = value; }
            get { return mesto; }
        }

        public string Drzava
        {
            set { drzava = value; }
            get { return drzava; }
        }

        public void Presmetaj(int g, int r)
        {
            int del = 0;
            try
            {
                del = g / r;
            }
            catch (DivideByZeroException e)
            {
                Console.WriteLine("Faten e isklucok na:", e);
            }
            finally
            {
                Console.WriteLine(del);
            }

        }

        public void Presmetajj(int g, int r)
        {
            if (r == 0)
            {
                throw (new MyExeption("So nula ne se deli"));
            }
            else
            {
                Console.WriteLine(g / r);
            }
        }
    }

    public class Student : Covek
    {
        //TODO Predefiniraj ja funkcijata presmetaj
    }


    public class Glavna
    {
        public static void Main()
        {
            Covek c = new Covek();
            Student s = new Student();

            c.Ime = "Zlatko";
            Debug.Write("sdgsdgsdg");
            c.Mesto = "Vinica";
            FileStream f = new FileStream("tekst.txt", FileMode.Open, FileAccess.Read, FileShare.Read);
            
        }

    }
}