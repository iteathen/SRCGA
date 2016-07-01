.class final Lcom/sun/javafx/scene/control/skin/LabeledText$1;
.super Ljavafx/css/FontCssMetaData;
.source "LabeledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/LabeledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/FontCssMetaData",
        "<",
        "Lcom/sun/javafx/scene/control/skin/LabeledText;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavafx/scene/text/Font;)V
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/text/Font;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/css/FontCssMetaData;-><init>(Ljava/lang/String;Ljavafx/scene/text/Font;)V

    return-void
.end method


# virtual methods
.method public getStyleableProperty(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/css/StyleableProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/scene/control/skin/LabeledText;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/LabeledText;->access$200(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    return-object v0
.end method

.method public bridge synthetic getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/scene/control/skin/LabeledText;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledText$1;->getStyleableProperty(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/css/StyleableProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    return-object v0
.end method

.method public isSettable(Lcom/sun/javafx/scene/control/skin/LabeledText;)Z
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/LabeledText;->access$100(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/scene/control/Labeled;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/LabeledText;->access$100(Lcom/sun/javafx/scene/control/skin/LabeledText;)Ljavafx/scene/control/Labeled;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic isSettable(Ljavafx/css/Styleable;)Z
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/scene/control/skin/LabeledText;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/LabeledText$1;->isSettable(Lcom/sun/javafx/scene/control/skin/LabeledText;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    return v0
.end method
