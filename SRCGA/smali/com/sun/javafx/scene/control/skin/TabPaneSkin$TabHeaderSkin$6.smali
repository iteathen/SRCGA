.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$6;
.super Ljavafx/beans/property/SimpleDoubleProperty;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 12

    .prologue
    .line 1429
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$6;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$6;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 2

    .prologue
    .line 1431
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$6;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$6;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->requestLayout()V

    .line 1432
    return-void
.end method
