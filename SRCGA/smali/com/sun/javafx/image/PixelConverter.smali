.class public interface abstract Lcom/sun/javafx/image/PixelConverter;
.super Ljava/lang/Object;
.source "PixelConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/nio/Buffer;",
        "U:",
        "Ljava/nio/Buffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IITU;IIII)V"
        }
    .end annotation
.end method

.method public abstract getGetter()Lcom/sun/javafx/image/PixelGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/javafx/image/PixelGetter",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getSetter()Lcom/sun/javafx/image/PixelSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/javafx/image/PixelSetter",
            "<TU;>;"
        }
    .end annotation
.end method
