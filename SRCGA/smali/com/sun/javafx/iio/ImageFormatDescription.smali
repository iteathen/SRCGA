.class public interface abstract Lcom/sun/javafx/iio/ImageFormatDescription;
.super Ljava/lang/Object;
.source "ImageFormatDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/iio/ImageFormatDescription$Signature;
    }
.end annotation


# virtual methods
.method public abstract getExtensions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFormatName()Ljava/lang/String;
.end method

.method public abstract getSignatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/iio/ImageFormatDescription$Signature;",
            ">;"
        }
    .end annotation
.end method
