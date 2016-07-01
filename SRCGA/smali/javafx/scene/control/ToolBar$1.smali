.class Ljavafx/scene/control/ToolBar$1;
.super Ljavafx/css/StyleableObjectProperty;
.source "ToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ToolBar;->orientationProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/Orientation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ToolBar;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ToolBar;Ljavafx/geometry/Orientation;)V
    .locals 5

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToolBar$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ToolBar;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Orientation;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/ToolBar$1;->this$0:Ljavafx/scene/control/ToolBar;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToolBar$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToolBar$1;->this$0:Ljavafx/scene/control/ToolBar;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToolBar$1;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ToolBar;",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToolBar$1;
    # getter for: Ljavafx/scene/control/ToolBar$StyleableProperties;->ORIENTATION:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/ToolBar$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToolBar$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToolBar$1;
    const-string v1, "orientation"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToolBar$1;
    return-object v0
.end method

.method public invalidated()V
    .locals 5

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToolBar$1;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ToolBar$1;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 160
    .local v1, "isVertical":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ToolBar$1;->this$0:Ljavafx/scene/control/ToolBar;

    # getter for: Ljavafx/scene/control/ToolBar;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/ToolBar;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/ToolBar;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 161
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ToolBar$1;->this$0:Ljavafx/scene/control/ToolBar;

    # getter for: Ljavafx/scene/control/ToolBar;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/ToolBar;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/ToolBar;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 162
    return-void

    .line 159
    .end local v1    # "isVertical":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 161
    .restart local v1    # "isVertical":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
