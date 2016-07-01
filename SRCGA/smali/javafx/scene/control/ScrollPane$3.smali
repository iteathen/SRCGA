.class Ljavafx/scene/control/ScrollPane$3;
.super Ljavafx/css/StyleableBooleanProperty;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ScrollPane;->fitToWidthProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ScrollPane;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ScrollPane;Z)V
    .locals 5

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ScrollPane;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/ScrollPane$3;->this$0:Ljavafx/scene/control/ScrollPane;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane$3;->this$0:Ljavafx/scene/control/ScrollPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollPane;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$3;
    # getter for: Ljavafx/scene/control/ScrollPane$StyleableProperties;->FIT_TO_WIDTH:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/ScrollPane$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$3;
    const-string v1, "fitToWidth"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 4

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane$3;->this$0:Ljavafx/scene/control/ScrollPane;

    # getter for: Ljavafx/scene/control/ScrollPane;->FIT_TO_WIDTH_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/ScrollPane;->access$200()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane$3;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 374
    return-void
.end method
