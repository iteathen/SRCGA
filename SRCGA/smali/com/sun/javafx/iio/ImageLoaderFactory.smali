.class public interface abstract Lcom/sun/javafx/iio/ImageLoaderFactory;
.super Ljava/lang/Object;
.source "ImageLoaderFactory.java"


# virtual methods
.method public abstract createImageLoader(Ljava/io/InputStream;)Lcom/sun/javafx/iio/ImageLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFormatDescription()Lcom/sun/javafx/iio/ImageFormatDescription;
.end method
