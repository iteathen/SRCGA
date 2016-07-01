.class public Lcom/sun/javafx/image/impl/General;
.super Ljava/lang/Object;
.source "General.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/General$IntToIntGeneralConverter;,
        Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;,
        Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;,
        Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/General;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/BytePixelSetter;
    new-instance v2, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    move-object v0, v2

    .end local v0    # "src":Lcom/sun/javafx/image/BytePixelGetter;
    return-object v0
.end method

.method public static create(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/IntPixelSetter;
    new-instance v2, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    move-object v0, v2

    .end local v0    # "src":Lcom/sun/javafx/image/BytePixelGetter;
    return-object v0
.end method

.method public static create(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)Lcom/sun/javafx/image/IntToBytePixelConverter;
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/IntPixelGetter;
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/BytePixelSetter;
    new-instance v2, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    move-object v0, v2

    .end local v0    # "src":Lcom/sun/javafx/image/IntPixelGetter;
    return-object v0
.end method

.method public static create(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)Lcom/sun/javafx/image/IntToIntPixelConverter;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/IntPixelGetter;
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/IntPixelSetter;
    new-instance v2, Lcom/sun/javafx/image/impl/General$IntToIntGeneralConverter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/General$IntToIntGeneralConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    move-object v0, v2

    .end local v0    # "src":Lcom/sun/javafx/image/IntPixelGetter;
    return-object v0
.end method
