.class Lcom/sun/javafx/font/PrismFontFactory$TTFilter;
.super Ljava/lang/Object;
.source "PrismFontFactory.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/PrismFontFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TTFilter"
.end annotation


# static fields
.field static ttFilter:Lcom/sun/javafx/font/PrismFontFactory$TTFilter;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1820
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory$TTFilter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1821
    return-void
.end method

.method static getInstance()Lcom/sun/javafx/font/PrismFontFactory$TTFilter;
    .locals 3

    .prologue
    .line 1825
    sget-object v0, Lcom/sun/javafx/font/PrismFontFactory$TTFilter;->ttFilter:Lcom/sun/javafx/font/PrismFontFactory$TTFilter;

    if-nez v0, :cond_0

    .line 1826
    new-instance v0, Lcom/sun/javafx/font/PrismFontFactory$TTFilter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/font/PrismFontFactory$TTFilter;-><init>()V

    sput-object v0, Lcom/sun/javafx/font/PrismFontFactory$TTFilter;->ttFilter:Lcom/sun/javafx/font/PrismFontFactory$TTFilter;

    .line 1828
    :cond_0
    sget-object v0, Lcom/sun/javafx/font/PrismFontFactory$TTFilter;->ttFilter:Lcom/sun/javafx/font/PrismFontFactory$TTFilter;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 1807
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFactory$TTFilter;
    move-object v1, p1

    .local v1, "dir":Ljava/io/File;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    add-int/lit8 v4, v4, -0x4

    move v3, v4

    .line 1808
    .local v3, "offset":I
    move v4, v3

    if-gtz v4, :cond_0

    .line 1809
    const/4 v4, 0x0

    move v0, v4

    .line 1816
    .end local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory$TTFilter;
    :goto_0
    return v0

    .line 1811
    .restart local v0    # "this":Lcom/sun/javafx/font/PrismFontFactory$TTFilter;
    :cond_0
    move-object v4, v2

    const-string v5, ".ttf"

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    const-string v5, ".TTF"

    move v6, v3

    .line 1812
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    const-string v5, ".ttc"

    move v6, v3

    .line 1813
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    const-string v5, ".TTC"

    move v6, v3

    .line 1814
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    const-string v5, ".otf"

    move v6, v3

    .line 1815
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    const-string v5, ".OTF"

    move v6, v3

    .line 1816
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
