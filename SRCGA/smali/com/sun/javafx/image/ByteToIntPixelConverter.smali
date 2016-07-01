.class public interface abstract Lcom/sun/javafx/image/ByteToIntPixelConverter;
.super Ljava/lang/Object;
.source "ByteToIntPixelConverter.java"

# interfaces
.implements Lcom/sun/javafx/image/PixelConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/javafx/image/PixelConverter",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract convert(Ljava/nio/ByteBuffer;II[IIIII)V
.end method

.method public abstract convert([BIILjava/nio/IntBuffer;IIII)V
.end method

.method public abstract convert([BII[IIIII)V
.end method
