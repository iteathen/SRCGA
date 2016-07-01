.class public interface abstract Lcom/sun/javafx/image/PixelGetter;
.super Ljava/lang/Object;
.source "PixelGetter.java"


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

.method public abstract getArgb(Ljava/nio/Buffer;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation
.end method

.method public abstract getArgbPre(Ljava/nio/Buffer;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation
.end method

.method public abstract getNumElements()I
.end method
