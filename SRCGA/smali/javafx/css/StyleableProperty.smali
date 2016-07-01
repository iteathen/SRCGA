.class public interface abstract Ljavafx/css/StyleableProperty;
.super Ljava/lang/Object;
.source "StyleableProperty.java"

# interfaces
.implements Ljavafx/beans/value/WritableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/WritableValue",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/StyleOrigin;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract getCssMetaData()Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getStyleOrigin()Ljavafx/css/StyleOrigin;
.end method
