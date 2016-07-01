.class Ljavafx/scene/control/ScrollBar$3;
.super Ljavafx/css/StyleableDoubleProperty;
.source "ScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ScrollBar;->blockIncrementProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ScrollBar;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ScrollBar;D)V
    .locals 8

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ScrollBar;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/ScrollBar$3;->this$0:Ljavafx/scene/control/ScrollBar;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollBar$3;->this$0:Ljavafx/scene/control/ScrollBar;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollBar;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar$3;
    # getter for: Ljavafx/scene/control/ScrollBar$StyleableProperties;->BLOCK_INCREMENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/ScrollBar$StyleableProperties;->access$400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar$3;
    const-string v1, "blockIncrement"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollBar$3;
    return-object v0
.end method
