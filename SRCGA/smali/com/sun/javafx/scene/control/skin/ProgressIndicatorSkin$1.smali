.class Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "ProgressIndicatorSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;Ljavafx/scene/paint/Paint;)V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/paint/Paint;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ProgressIndicator;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
    # getter for: Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->PROGRESS_COLOR:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
    const-string v1, "progressColorProperty"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/paint/Paint;

    move-object v1, v2

    .line 84
    .local v1, "value":Ljavafx/scene/paint/Paint;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/paint/Color;

    if-nez v2, :cond_1

    .line 85
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;->unbind()V

    .line 88
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;->set(Ljava/lang/Object;)V

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Only Color objects are supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->setFillOverride(Ljavafx/scene/paint/Paint;)V

    .line 92
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->access$200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;Ljavafx/scene/paint/Paint;)V

    .line 93
    :cond_3
    return-void
.end method
