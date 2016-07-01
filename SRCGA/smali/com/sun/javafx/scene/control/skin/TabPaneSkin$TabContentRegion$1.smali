.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion$1;
.super Ljava/lang/Object;
.source "TabPaneSkin.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;)V
    .locals 4

    .prologue
    .line 1550
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 1552
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion$1;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->access$4100(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;)Ljavafx/scene/control/Tab;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabContentRegion;->setVisible(Z)V

    .line 1553
    return-void
.end method
