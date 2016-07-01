.class Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;
.super Ljava/lang/Object;
.source "DatePickerSkin.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/DatePickerSkin;-><init>(Ljavafx/scene/control/DatePicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private rounding:Z

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/DatePickerSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/DatePickerSkin;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/DatePickerSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/DatePickerSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 58
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;->rounding:Z

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 15

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;
    move-object/from16 v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;->rounding:Z

    if-nez v4, :cond_0

    .line 61
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/DatePickerSkin;

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->arrow:Ljavafx/scene/layout/Region;

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->getPadding()Ljavafx/geometry/Insets;

    move-result-object v4

    move-object v2, v4

    .line 62
    .local v2, "padding":Ljavafx/geometry/Insets;
    new-instance v4, Ljavafx/geometry/Insets;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    move-object v10, v2

    .line 63
    invoke-virtual {v10}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-direct/range {v5 .. v13}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    move-object v3, v4

    .line 64
    .local v3, "rounded":Ljavafx/geometry/Insets;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;->rounding:Z

    .line 66
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/DatePickerSkin;

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/DatePickerSkin;->arrow:Ljavafx/scene/layout/Region;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/Region;->setPadding(Ljavafx/geometry/Insets;)V

    .line 67
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/DatePickerSkin$1;->rounding:Z

    .line 70
    .end local v2    # "padding":Ljavafx/geometry/Insets;
    .end local v3    # "rounded":Ljavafx/geometry/Insets;
    :cond_0
    return-void
.end method
