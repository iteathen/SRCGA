.class public interface abstract Lcom/sun/javafx/image/PixelSetter;
.super Ljava/lang/Object;
.source "PixelSetter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/nio/Buffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAlphaType()Lcom/sun/javafx/image/AlphaType;
.end method

.method public abstract getNumElements()I
.end method

.method public abstract setArgb(Ljava/nio/Buffer;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation
.end method

.method public abstract setArgbPre(Ljava/nio/Buffer;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation
.end method
