.class public interface abstract Lcom/sun/javafx/image/ByteToBytePixelConverter;
.super Ljava/lang/Object;
.source "ByteToBytePixelConverter.java"

# interfaces
.implements Lcom/sun/javafx/image/PixelConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/javafx/image/PixelConverter",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract convert(Ljava/nio/ByteBuffer;II[BIIII)V
.end method

.method public abstract convert([BIILjava/nio/ByteBuffer;IIII)V
.end method

.method public abstract convert([BII[BIIII)V
.end method
