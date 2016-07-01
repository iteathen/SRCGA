.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem$1;
.super Ljava/lang/Object;
.source "TabPaneSkin.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;)V
    .locals 4

    .prologue
    .line 1793
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 1795
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem$1;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem$1;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->tab:Ljavafx/scene/control/Tab;

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->isDisable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabMenuItem;->setDisable(Z)V

    .line 1796
    return-void
.end method
