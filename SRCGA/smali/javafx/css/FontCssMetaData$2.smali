.class final Ljavafx/css/FontCssMetaData$2;
.super Ljavafx/css/CssMetaData;
.source "FontCssMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/css/FontCssMetaData;->createSubProperties(Ljava/lang/String;Ljavafx/scene/text/Font;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/CssMetaData",
        "<TS;",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;Z)V
    .locals 10

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/css/FontCssMetaData$2;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljava/lang/Number;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljava/lang/Number;
    move v4, p4

    .local v4, "inherits":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/css/FontCssMetaData$2;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/css/FontCssMetaData$2;
    return-object v0
.end method

.method public isSettable(Ljavafx/css/Styleable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/css/FontCssMetaData$2;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/css/FontCssMetaData$2;
    return v0
.end method
