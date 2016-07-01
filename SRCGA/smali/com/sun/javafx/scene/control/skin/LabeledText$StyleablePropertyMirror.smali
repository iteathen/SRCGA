.class Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;
.super Ljavafx/css/SimpleStyleableObjectProperty;
.source "LabeledText.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/LabeledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyleablePropertyMirror"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/css/SimpleStyleableObjectProperty",
        "<TT;>;",
        "Ljavafx/beans/InvalidationListener;"
    }
.end annotation


# instance fields
.field applying:Z

.field private final property:Ljavafx/css/StyleableProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/StyleableProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/LabeledText;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/LabeledText;Ljavafx/css/CssMetaData;Ljava/lang/String;Ljava/lang/Object;Ljavafx/css/StyleableProperty;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/CssMetaData",
            "<",
            "Lcom/sun/javafx/scene/control/skin/LabeledText;",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;",
            "Ljavafx/css/StyleableProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;, "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Lcom/sun/javafx/scene/control/skin/LabeledText;TT;>;"
    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, p4

    .local v4, "initialValue":Ljava/lang/Object;, "TT;"
    move-object/from16 v5, p5

    .local v5, "property":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<TT;>;"
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;->this$0:Lcom/sun/javafx/scene/control/skin/LabeledText;

    .line 263
    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;->property:Ljavafx/css/StyleableProperty;

    .line 265
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;->applying:Z

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/LabeledText;Ljavafx/css/CssMetaData;Ljava/lang/String;Ljava/lang/Object;Ljavafx/css/StyleableProperty;Lcom/sun/javafx/scene/control/skin/LabeledText$1;)V
    .locals 13

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;, "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror<TT;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/LabeledText;
    move-object v2, p2

    .local v2, "x1":Ljavafx/css/CssMetaData;
    move-object/from16 v3, p3

    .local v3, "x2":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "x3":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "x4":Ljavafx/css/StyleableProperty;
    move-object/from16 v6, p6

    .local v6, "x5":Lcom/sun/javafx/scene/control/skin/LabeledText$1;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;-><init>(Lcom/sun/javafx/scene/control/skin/LabeledText;Ljavafx/css/CssMetaData;Ljava/lang/String;Ljava/lang/Object;Ljavafx/css/StyleableProperty;)V

    return-void
.end method


# virtual methods
.method public applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/StyleOrigin;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;, "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror<TT;>;"
    move-object v1, p1

    .local v1, "newOrigin":Ljavafx/css/StyleOrigin;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;->applying:Z

    .line 288
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;->property:Ljavafx/css/StyleableProperty;

    invoke-interface {v4}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v4

    move-object v3, v4

    .line 297
    .local v3, "propOrigin":Ljavafx/css/StyleOrigin;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v3

    move-object v5, v1

    .line 299
    invoke-virtual {v4, v5}, Ljavafx/css/StyleOrigin;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 301
    :cond_0
    :goto_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/css/SimpleStyleableObjectProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 302
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;->property:Ljavafx/css/StyleableProperty;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 304
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;->applying:Z

    .line 305
    return-void

    .line 299
    :cond_2
    move-object v4, v3

    sget-object v5, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    if-eq v4, v5, :cond_1

    goto :goto_0
.end method

.method public getStyleOrigin()Ljavafx/css/StyleOrigin;
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;, "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;->property:Ljavafx/css/StyleableProperty;

    invoke-interface {v1}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;, "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror<TT;>;"
    return-object v0
.end method

.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;, "Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/LabeledText$StyleablePropertyMirror;->applying:Z

    if-nez v2, :cond_0

    .line 275
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    check-cast v4, Ljavafx/beans/value/ObservableValue;

    invoke-interface {v4}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-super {v2, v3, v4}, Ljavafx/css/SimpleStyleableObjectProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 277
    :cond_0
    return-void
.end method
