.class Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;
.super Ljavafx/beans/binding/DoubleBinding;
.source "TitledPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;-><init>(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

.field final synthetic val$this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)V
    .locals 9

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;->this$1:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;->val$this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/DoubleBinding;-><init>()V

    .line 353
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;->this$1:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->access$300(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;->bind([Ljavafx/beans/Observable;)V

    return-void
.end method


# virtual methods
.method protected computeValue()D
    .locals 8

    .prologue
    .line 356
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;->this$1:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->this$0:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->access$400(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion$1;
    return-wide v1
.end method
