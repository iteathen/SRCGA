.class Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;
.super Ljavafx/css/StyleableBooleanProperty;
.source "ProgressBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->indeterminateBarFlipProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;Z)V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ProgressBar;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;
    # getter for: Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_FLIP:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;
    const-string v1, "indeterminateBarFlip"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$3;
    return-object v0
.end method
