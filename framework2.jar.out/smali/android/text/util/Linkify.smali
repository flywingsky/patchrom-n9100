.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final ALL_EX:I = 0x5a

.field public static final ALL_KR:I = 0x6a

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field public static final PHONE_NUMBERS_KR:I = 0x40

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final WEB_URLS:I = 0x1

.field public static final WEB_URLS_EX:I = 0x10

.field public static final WEB_URLS_KR:I = 0x20

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 140
    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 163
    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "t"    # Landroid/widget/TextView;

    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 413
    .local v0, "m":Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 414
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 418
    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 433
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 434
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 2
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    .line 453
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 455
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 459
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 15
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mask"    # I

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v1, 0x0

    .line 373
    :goto_0
    return v1

    .line 230
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/URLSpan;

    .line 232
    .local v13, "old":[Landroid/text/style/URLSpan;
    array-length v1, v13

    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 233
    aget-object v1, v13, v7

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 232
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 236
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 239
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "http://"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "https://"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 245
    :cond_2
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_8

    .line 246
    sget-object v2, Landroid/util/Patterns;->WEB_URL_EX:Ljava/util/regex/Pattern;

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "http://"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "https://"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "ftp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/util/LinkSpec;

    .line 252
    .local v10, "link":Landroid/text/util/LinkSpec;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v10, Landroid/text/util/LinkSpec;->start:I

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 254
    .local v11, "linkedText":Ljava/lang/String;
    const-string/jumbo v1, "www."

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "www."

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "http://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "https://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "rtsp://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ftp://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 256
    iget v1, v10, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v2, "www."

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v10, Landroid/text/util/LinkSpec;->start:I

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Landroid/text/util/LinkSpec;->start:I

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 267
    :cond_4
    :goto_3
    const-string v1, "."

    invoke-virtual {v11, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 268
    .local v14, "position":I
    if-ltz v14, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v14, v1, :cond_3

    const-string v1, "http://api.map.baidu.com/marker?location="

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 269
    add-int/lit8 v1, v14, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 271
    .local v6, "chars":[C
    const/4 v7, 0x0

    :goto_4
    array-length v1, v6

    if-ge v7, v1, :cond_5

    .line 272
    aget-char v1, v6, v7

    const/16 v2, 0x80

    if-lt v1, v2, :cond_7

    .line 277
    :cond_5
    array-length v1, v6

    if-ge v7, v1, :cond_3

    .line 278
    iget v1, v10, Landroid/text/util/LinkSpec;->end:I

    array-length v2, v6

    sub-int/2addr v2, v7

    sub-int/2addr v1, v2

    iput v1, v10, Landroid/text/util/LinkSpec;->end:I

    .line 279
    iget-object v1, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    array-length v4, v6

    sub-int/2addr v4, v7

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto/16 :goto_2

    .line 260
    .end local v6    # "chars":[C
    .end local v14    # "position":I
    :cond_6
    const-string/jumbo v1, "wap."

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "wap."

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "http://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "https://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "rtsp://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ftp://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 262
    iget v1, v10, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v2, "wap."

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v10, Landroid/text/util/LinkSpec;->start:I

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Landroid/text/util/LinkSpec;->start:I

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    goto/16 :goto_3

    .line 271
    .restart local v6    # "chars":[C
    .restart local v14    # "position":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 286
    .end local v6    # "chars":[C
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "link":Landroid/text/util/LinkSpec;
    .end local v11    # "linkedText":Ljava/lang/String;
    .end local v14    # "position":I
    :cond_8
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_12

    .line 287
    sget-object v2, Landroid/util/Patterns;->WEB_URL_KR:Ljava/util/regex/Pattern;

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "http://"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "https://"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "ftp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 292
    const/4 v9, 0x0

    .line 296
    .local v9, "j":I
    :cond_9
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_12

    .line 297
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/util/LinkSpec;

    .line 298
    .restart local v10    # "link":Landroid/text/util/LinkSpec;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v10, Landroid/text/util/LinkSpec;->start:I

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 300
    .restart local v11    # "linkedText":Ljava/lang/String;
    const-string v1, ".ht"

    invoke-virtual {v11, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    iget v2, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_d

    const-string/jumbo v1, "tp"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 301
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v9, 0x1

    if-le v1, v2, :cond_c

    .line 302
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/text/util/LinkSpec;

    .line 303
    .local v12, "linknext":Landroid/text/util/LinkSpec;
    iget v1, v12, Landroid/text/util/LinkSpec;->start:I

    iget v2, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v2, v2, 0x5

    if-ne v1, v2, :cond_a

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    iget v2, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v2, v2, 0x5

    if-le v1, v2, :cond_a

    const-string/jumbo v1, "tp://"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    iget v1, v12, Landroid/text/util/LinkSpec;->start:I

    iget v2, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v2, v2, 0x6

    if-ne v1, v2, :cond_c

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    iget v2, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v2, v2, 0x6

    if-le v1, v2, :cond_c

    const-string/jumbo v1, "tps://"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 305
    :cond_b
    iget v1, v10, Landroid/text/util/LinkSpec;->end:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v12, Landroid/text/util/LinkSpec;->start:I

    .line 306
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v0, v1, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 309
    .end local v12    # "linknext":Landroid/text/util/LinkSpec;
    :cond_c
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    if-lez v9, :cond_9

    .line 311
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_5

    .line 315
    :cond_d
    const-string/jumbo v1, "www."

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string/jumbo v1, "www."

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "http://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "https://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "rtsp://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "ftp://"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 317
    iget v1, v10, Landroid/text/util/LinkSpec;->start:I

    const-string/jumbo v2, "www."

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v10, Landroid/text/util/LinkSpec;->start:I

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v10, Landroid/text/util/LinkSpec;->start:I

    iget v4, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 322
    :cond_e
    const-string v1, "."

    invoke-virtual {v11, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 323
    .restart local v14    # "position":I
    if-ltz v14, :cond_10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v14, v1, :cond_10

    .line 324
    add-int/lit8 v1, v14, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 326
    .restart local v6    # "chars":[C
    const/4 v7, 0x0

    :goto_6
    array-length v1, v6

    if-ge v7, v1, :cond_f

    .line 327
    aget-char v1, v6, v7

    const/16 v2, 0x80

    if-lt v1, v2, :cond_11

    .line 332
    :cond_f
    array-length v1, v6

    if-ge v7, v1, :cond_10

    if-lez v7, :cond_10

    add-int/lit8 v1, v7, -0x1

    aget-char v1, v6, v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_10

    .line 333
    iget v1, v10, Landroid/text/util/LinkSpec;->end:I

    array-length v2, v6

    sub-int/2addr v2, v7

    sub-int/2addr v1, v2

    iput v1, v10, Landroid/text/util/LinkSpec;->end:I

    .line 334
    iget-object v1, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    array-length v4, v6

    sub-int/2addr v4, v7

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 337
    .end local v6    # "chars":[C
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 338
    goto/16 :goto_5

    .line 326
    .restart local v6    # "chars":[C
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 341
    .end local v6    # "chars":[C
    .end local v9    # "j":I
    .end local v10    # "link":Landroid/text/util/LinkSpec;
    .end local v11    # "linkedText":Ljava/lang/String;
    .end local v14    # "position":I
    :cond_12
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_13

    .line 342
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "mailto:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 347
    :cond_13
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_14

    .line 348
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 353
    :cond_14
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_15

    .line 354
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "tel:"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 359
    :cond_15
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_16

    .line 360
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 363
    :cond_16
    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 365
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_17

    .line 366
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 369
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/util/LinkSpec;

    .line 370
    .restart local v10    # "link":Landroid/text/util/LinkSpec;
    iget-object v1, v10, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v2, v10, Landroid/text/util/LinkSpec;->start:I

    iget v3, v10, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_7

    .line 373
    .end local v10    # "link":Landroid/text/util/LinkSpec;
    :cond_18
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 10
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p4, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v9, 0x0

    .line 493
    const/4 v2, 0x0

    .line 494
    .local v2, "hasMatches":Z
    if-nez p2, :cond_2

    const-string v4, ""

    .line 495
    .local v4, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 497
    .local v3, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 498
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 499
    .local v5, "start":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 500
    .local v1, "end":I
    const/4 v0, 0x1

    .line 502
    .local v0, "allowed":Z
    if-eqz p3, :cond_1

    .line 503
    invoke-interface {p3, p0, v5, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 506
    :cond_1
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v7, v8, v3, p4}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6, v5, v1, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 511
    const/4 v2, 0x1

    goto :goto_1

    .line 494
    .end local v0    # "allowed":Z
    .end local v1    # "end":I
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "url":Ljava/lang/String;
    :cond_2
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 515
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 5
    .param p0, "text"    # Landroid/widget/TextView;
    .param p1, "mask"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 383
    if-nez p1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return v2

    .line 387
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 389
    .local v1, "t":Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    .line 390
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "t":Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    .line 392
    goto :goto_0

    .line 397
    .restart local v1    # "t":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 399
    .local v0, "s":Landroid/text/SpannableString;
    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 401
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 403
    goto :goto_0
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Landroid/text/Spannable;

    .prologue
    .line 519
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, "span":Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 522
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "schemes"    # [Ljava/lang/String;
    .param p4, "matchFilter"    # Landroid/text/util/Linkify$MatchFilter;
    .param p5, "transformFilter"    # Landroid/text/util/Linkify$TransformFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 559
    .local v1, "m":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 560
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 561
    .local v3, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 563
    .local v0, "end":I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 564
    :cond_1
    new-instance v2, Landroid/text/util/LinkSpec;

    invoke-direct {v2}, Landroid/text/util/LinkSpec;-><init>()V

    .line 565
    .local v2, "spec":Landroid/text/util/LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, "url":Ljava/lang/String;
    iput-object v4, v2, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 568
    iput v3, v2, Landroid/text/util/LinkSpec;->start:I

    .line 569
    iput v0, v2, Landroid/text/util/LinkSpec;->end:I

    .line 571
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 574
    .end local v0    # "end":I
    .end local v2    # "spec":Landroid/text/util/LinkSpec;
    .end local v3    # "start":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 592
    .local v8, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 594
    .local v1, "base":I
    :goto_0
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 597
    .local v7, "start":I
    if-gez v7, :cond_1

    .line 621
    .end local v7    # "start":I
    :cond_0
    return-void

    .line 601
    .restart local v7    # "start":I
    :cond_1
    new-instance v6, Landroid/text/util/LinkSpec;

    invoke-direct {v6}, Landroid/text/util/LinkSpec;-><init>()V

    .line 602
    .local v6, "spec":Landroid/text/util/LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 603
    .local v5, "length":I
    add-int v4, v7, v5

    .line 605
    .local v4, "end":I
    add-int v9, v1, v7

    iput v9, v6, Landroid/text/util/LinkSpec;->start:I

    .line 606
    add-int v9, v1, v4

    iput v9, v6, Landroid/text/util/LinkSpec;->end:I

    .line 607
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 608
    add-int/2addr v1, v4

    .line 610
    const/4 v3, 0x0

    .line 613
    .local v3, "encodedAddress":Ljava/lang/String;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 618
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 619
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 614
    :catch_0
    move-exception v2

    .line 615
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static final gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Spannable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 578
    .local v0, "phoneUtil":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v8

    .line 580
    .local v8, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/i18n/phonenumbers/PhoneNumberMatch;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 581
    .local v7, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    new-instance v9, Landroid/text/util/LinkSpec;

    invoke-direct {v9}, Landroid/text/util/LinkSpec;-><init>()V

    .line 582
    .local v9, "spec":Landroid/text/util/LinkSpec;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 583
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->start:I

    .line 584
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    iput v1, v9, Landroid/text/util/LinkSpec;->end:I

    .line 585
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 587
    .end local v7    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .end local v9    # "spec":Landroid/text/util/LinkSpec;
    :cond_0
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "prefixes"    # [Ljava/lang/String;
    .param p2, "m"    # Ljava/util/regex/Matcher;
    .param p3, "filter"    # Landroid/text/util/Linkify$TransformFilter;

    .prologue
    const/4 v2, 0x0

    .line 526
    if-eqz p3, :cond_0

    .line 527
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 530
    :cond_0
    const/4 v7, 0x0

    .line 532
    .local v7, "hasPrefix":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 533
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 535
    const/4 v7, 0x1

    .line 538
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 547
    :cond_1
    if-nez v7, :cond_2

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 551
    :cond_2
    return-object p0

    .line 532
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v2, Landroid/text/util/Linkify$4;

    invoke-direct {v2}, Landroid/text/util/Linkify$4;-><init>()V

    .line 650
    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/text/util/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 652
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 653
    .local v4, "len":I
    const/4 v3, 0x0

    .line 655
    .local v3, "i":I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    .line 656
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/LinkSpec;

    .line 657
    .local v0, "a":Landroid/text/util/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    .line 658
    .local v1, "b":Landroid/text/util/LinkSpec;
    const/4 v5, -0x1

    .line 660
    .local v5, "remove":I
    iget v6, v0, Landroid/text/util/LinkSpec;->start:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    .line 661
    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    .line 662
    add-int/lit8 v5, v3, 0x1

    .line 669
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 670
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 671
    add-int/lit8 v4, v4, -0x1

    .line 672
    goto :goto_0

    .line 663
    :cond_1
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 664
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 665
    :cond_2
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 666
    move v5, v3

    goto :goto_1

    .line 677
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 678
    goto :goto_0

    .line 679
    .end local v0    # "a":Landroid/text/util/LinkSpec;
    .end local v1    # "b":Landroid/text/util/LinkSpec;
    .end local v5    # "remove":I
    :cond_4
    return-void
.end method
