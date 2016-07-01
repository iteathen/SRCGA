.class public Lcom/sun/javafx/image/impl/ByteIndexed;
.super Ljava/lang/Object;
.source "ByteIndexed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;,
        Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;,
        Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/BytePixelGetter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/sun/javafx/image/BytePixelGetter;"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    new-instance v1, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;-><init>(Ljavafx/scene/image/PixelFormat;)V

    move-object v0, v1

    .end local v0    # "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    return-object v0
.end method

.method public static createToByteBgraAny(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 7

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/BytePixelSetter;
    new-instance v2, Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    move-object v0, v2

    .end local v0    # "src":Lcom/sun/javafx/image/BytePixelGetter;
    return-object v0
.end method

.method public static createToIntArgbAny(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/IntPixelSetter;
    new-instance v2, Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    move-object v0, v2

    .end local v0    # "src":Lcom/sun/javafx/image/BytePixelGetter;
    return-object v0
.end method

.method static getColors(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/PixelSetter;)[I
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v1, p1

    .local v1, "setter":Lcom/sun/javafx/image/PixelSetter;
    move-object v3, v0

    check-cast v3, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;

    move-object v2, v3

    .line 117
    .local v2, "big":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/javafx/image/PixelSetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v3

    sget-object v4, Lcom/sun/javafx/image/AlphaType;->PREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    if-ne v3, v4, :cond_0

    move-object v3, v2

    .line 118
    invoke-virtual {v3}, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->getPreColors()[I

    move-result-object v3

    .line 119
    :goto_0
    move-object v0, v3

    .end local v0    # "getter":Lcom/sun/javafx/image/BytePixelGetter;
    return-object v0

    .line 118
    .restart local v0    # "getter":Lcom/sun/javafx/image/BytePixelGetter;
    :cond_0
    move-object v3, v2

    .line 119
    invoke-virtual {v3}, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->getNonPreColors()[I

    move-result-object v3

    goto :goto_0
.end method
