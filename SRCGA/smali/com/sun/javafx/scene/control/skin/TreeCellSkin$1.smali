.class Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;
.super Ljavafx/css/StyleableDoubleProperty;
.source "TreeCellSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TreeCellSkin;->indentProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TreeCellSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TreeCellSkin;D)V
    .locals 8

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TreeCellSkin;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/TreeCellSkin;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/TreeCellSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/TreeCell",
            "<*>;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;"
    # getter for: Lcom/sun/javafx/scene/control/skin/TreeCellSkin$StyleableProperties;->INDENT:Ljavafx/css/CssMetaData;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TreeCellSkin$StyleableProperties;->access$000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;"
    const-string v1, "indent"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;, "Lcom/sun/javafx/scene/control/skin/TreeCellSkin$1;"
    return-object v0
.end method
