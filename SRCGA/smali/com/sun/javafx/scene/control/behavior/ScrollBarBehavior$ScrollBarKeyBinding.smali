.class public Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;
.super Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;
.source "ScrollBarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollBarKeyBinding"
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;
    move-object v1, p1

    .local v1, "code":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "action":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/input/KeyCode;",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;
    move-object v1, p1

    .local v1, "code":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/KeyEvent;>;"
    move-object v3, p3

    .local v3, "action":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    .line 309
    return-void
.end method


# virtual methods
.method public getVertical(Ljavafx/scene/control/Control;)Z
    .locals 4

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;
    move-object v2, v1

    check-cast v2, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
