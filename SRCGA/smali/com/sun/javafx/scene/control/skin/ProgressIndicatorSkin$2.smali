.class Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;
.super Ljavafx/css/StyleableIntegerProperty;
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
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;I)V
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableIntegerProperty;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;
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
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;
    # getter for: Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->INDETERMINATE_SEGMENT_COUNT:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$500()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;
    const-string v1, "indeterminateSegmentCount"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->access$400(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;)V

    .line 118
    :cond_0
    return-void
.end method
