.class public interface abstract Lcom/sun/javafx/image/IntToBytePixelConverter;
.super Ljava/lang/Object;
.source "IntToBytePixelConverter.java"

# interfaces
.implements Lcom/sun/javafx/image/PixelConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/javafx/image/PixelConverter",
        "<",
        "Ljava/nio/IntBuffer;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract convert(Ljava/nio/IntBuffer;II[BIIII)V
.end method

.method public abstract convert([IIILjava/nio/ByteBuffer;IIII)V
.end method

.method public abstract convert([III[BIIII)V
.end method
