.class Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;
.super Ljavafx/css/StyleableBooleanProperty;
.source "ProgressIndicatorSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;Z)V
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;
    # getter for: Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->SPIN_ENABLED:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$600()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;
    const-string v1, "spinEnabled"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->setSpinEnabled(Z)V

    .line 139
    :cond_0
    return-void
.end method
