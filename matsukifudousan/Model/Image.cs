//------------------------------------------------------------------------------
// <auto-generated>
//     このコードはテンプレートから生成されました。
//
//     このファイルを手動で変更すると、アプリケーションで予期しない動作が発生する可能性があります。
//     このファイルに対する手動の変更は、コードが再生成されると上書きされます。
// </auto-generated>
//------------------------------------------------------------------------------

namespace matsukifudousan.Model
{
    using System;
    using System.Collections.Generic;
    using System.Windows.Media.Imaging;

    public partial class Image
    {
        public int ID { get; set; }
        public string ImageName { get; set; }
        public string ImagePath { get; set; }
        public string ImageData { get; set; }
        public BitmapImage Source { get; internal set; }
    }
}
