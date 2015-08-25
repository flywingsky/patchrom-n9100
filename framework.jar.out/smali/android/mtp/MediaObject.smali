.class Landroid/mtp/MediaObject;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MTPJNIInterface"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public creationDate:Ljava/lang/String;

.field public dateTaken:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:J

.field public filename:Ljava/lang/String;

.field public genreName:Ljava/lang/String;

.field public height:J

.field public id:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mimeTypeEnum:I

.field public modificationDate:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public width:J

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1681
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 1682
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 1683
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 1684
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 1685
    iput-wide v1, p0, Landroid/mtp/MediaObject;->duration:J

    .line 1686
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 1687
    const/4 v0, 0x3

    iput v0, p0, Landroid/mtp/MediaObject;->mimeTypeEnum:I

    .line 1688
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 1689
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 1690
    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MediaObject;->year:I

    .line 1691
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 1692
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 1693
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 1694
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 1695
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 1696
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 1697
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 1698
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 1699
    iput-wide v1, p0, Landroid/mtp/MediaObject;->width:J

    .line 1700
    iput-wide v1, p0, Landroid/mtp/MediaObject;->height:J

    .line 1701
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->dateTaken:Ljava/lang/String;

    .line 1705
    const-string v0, "MTPJNIInterface"

    const-string v1, "Inside MediaObject Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "composer"    # Ljava/lang/String;
    .param p5, "creationDate"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "duration"    # J
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "language"    # Ljava/lang/String;
    .param p11, "latitude"    # Ljava/lang/String;
    .param p12, "longitude"    # Ljava/lang/String;
    .param p13, "mimeTypeEnum"    # I
    .param p14, "modificationDate"    # Ljava/lang/String;
    .param p15, "path"    # Ljava/lang/String;
    .param p16, "size"    # Ljava/lang/String;
    .param p17, "title"    # Ljava/lang/String;
    .param p18, "year"    # I
    .param p19, "genreName"    # Ljava/lang/String;
    .param p20, "width"    # J
    .param p22, "height"    # J
    .param p24, "dateTaken"    # Ljava/lang/String;

    .prologue
    .line 1710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1681
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 1682
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 1683
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 1684
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 1685
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/mtp/MediaObject;->duration:J

    .line 1686
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 1687
    const/4 v2, 0x3

    iput v2, p0, Landroid/mtp/MediaObject;->mimeTypeEnum:I

    .line 1688
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 1689
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 1690
    const/4 v2, 0x0

    iput v2, p0, Landroid/mtp/MediaObject;->year:I

    .line 1691
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 1692
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 1693
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 1694
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 1695
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 1696
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 1697
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 1698
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 1699
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/mtp/MediaObject;->width:J

    .line 1700
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/mtp/MediaObject;->height:J

    .line 1701
    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->dateTaken:Ljava/lang/String;

    .line 1711
    iput-object p1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 1712
    iput-object p2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 1713
    iput-object p3, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 1714
    iput-object p4, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 1715
    iput-object p5, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 1716
    iput-object p6, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 1717
    iput-wide p7, p0, Landroid/mtp/MediaObject;->duration:J

    .line 1719
    iput-object p9, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 1721
    iput-object p10, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 1723
    iput-object p11, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 1725
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 1727
    move/from16 v0, p13

    iput v0, p0, Landroid/mtp/MediaObject;->mimeTypeEnum:I

    .line 1729
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 1731
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 1733
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 1735
    move-object/from16 v0, p17

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 1737
    move/from16 v0, p18

    iput v0, p0, Landroid/mtp/MediaObject;->year:I

    .line 1739
    move-object/from16 v0, p19

    iput-object v0, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 1741
    move-wide/from16 v0, p20

    iput-wide v0, p0, Landroid/mtp/MediaObject;->width:J

    .line 1743
    move-wide/from16 v0, p22

    iput-wide v0, p0, Landroid/mtp/MediaObject;->height:J

    .line 1745
    move-object/from16 v0, p24

    iput-object v0, p0, Landroid/mtp/MediaObject;->dateTaken:Ljava/lang/String;

    .line 1748
    return-void
.end method
