.class public interface abstract Lcom/sun/javafx/image/BytePixelGetter;
.super Ljava/lang/Object;
.source "BytePixelGetter.java"

# interfaces
.implements Lcom/sun/javafx/image/PixelGetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/javafx/image/PixelGetter",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getArgb([BI)I
.end method

.method public abstract getArgbPre([BI)I
.end method
