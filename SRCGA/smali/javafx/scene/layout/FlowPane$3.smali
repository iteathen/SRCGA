.class Ljavafx/scene/layout/FlowPane$3;
.super Ljavafx/css/StyleableDoubleProperty;
.source "FlowPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/FlowPane;->vgapProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/FlowPane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/FlowPane;)V
    .locals 4

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/FlowPane;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/FlowPane$3;->this$0:Ljavafx/scene/layout/FlowPane;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableDoubleProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane$3;->this$0:Ljavafx/scene/layout/FlowPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/FlowPane;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$3;
    # getter for: Ljavafx/scene/layout/FlowPane$StyleableProperties;->VGAP:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/FlowPane$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$3;
    const-string v1, "vgap"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/FlowPane$3;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/FlowPane$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/FlowPane$3;->this$0:Ljavafx/scene/layout/FlowPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/FlowPane;->requestLayout()V

    .line 367
    return-void
.end method
