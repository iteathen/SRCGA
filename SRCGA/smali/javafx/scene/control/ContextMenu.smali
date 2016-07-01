.class public Ljavafx/scene/control/ContextMenu;
.super Ljavafx/scene/control/PopupControl;
.source "ContextMenu.java"


# annotations
.annotation runtime Lcom/sun/javafx/beans/IDProperty;
    value = "id"
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "context-menu"


# instance fields
.field private final impl_showRelativeToWindow:Ljavafx/beans/property/BooleanProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final items:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private onAction:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/PopupControl;-><init>()V

    .line 159
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ContextMenu$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ContextMenu$1;-><init>(Ljavafx/scene/control/ContextMenu;)V

    iput-object v2, v1, Ljavafx/scene/control/ContextMenu;->onAction:Ljavafx/beans/property/ObjectProperty;

    .line 178
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ContextMenu$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ContextMenu$2;-><init>(Ljavafx/scene/control/ContextMenu;)V

    iput-object v2, v1, Ljavafx/scene/control/ContextMenu;->items:Ljavafx/collections/ObservableList;

    .line 207
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Z)V

    iput-object v2, v1, Ljavafx/scene/control/ContextMenu;->impl_showRelativeToWindow:Ljavafx/beans/property/BooleanProperty;

    .line 134
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "context-menu"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 135
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ContextMenu;->setAutoHide(Z)V

    .line 136
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ContextMenu;->setConsumeAutoHidingEvents(Z)V

    .line 137
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/control/MenuItem;)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object v1, p1

    .local v1, "items":[Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ContextMenu;-><init>()V

    .line 144
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ContextMenu;->items:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 145
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/ContextMenu;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ContextMenu;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ContextMenu;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method private doShow(Ljavafx/scene/Node;DD)V
    .locals 16

    .prologue
    .line 280
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object/from16 v1, p1

    .local v1, "anchor":Ljavafx/scene/Node;
    move-wide/from16 v2, p2

    .local v2, "screenX":D
    move-wide/from16 v4, p4

    .local v4, "screenY":D
    move-object v8, v0

    new-instance v9, Ljavafx/event/Event;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    sget-object v11, Ljavafx/scene/control/Menu;->ON_SHOWING:Ljavafx/event/EventType;

    invoke-direct {v10, v11}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v8, v9}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 281
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/ContextMenu;->isImpl_showRelativeToWindow()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 282
    move-object v8, v1

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    move-object v6, v8

    .line 283
    .local v6, "scene":Ljavafx/scene/Scene;
    move-object v8, v6

    if-nez v8, :cond_1

    const/4 v8, 0x0

    :goto_1
    move-object v7, v8

    .line 284
    .local v7, "win":Ljavafx/stage/Window;
    move-object v8, v7

    if-nez v8, :cond_2

    .line 290
    .end local v6    # "scene":Ljavafx/scene/Scene;
    .end local v7    # "win":Ljavafx/stage/Window;
    :goto_2
    return-void

    .line 282
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v8

    goto :goto_0

    .line 283
    .restart local v6    # "scene":Ljavafx/scene/Scene;
    :cond_1
    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v8

    goto :goto_1

    .line 285
    .restart local v7    # "win":Ljavafx/stage/Window;
    :cond_2
    move-object v8, v0

    move-object v9, v7

    move-wide v10, v2

    move-wide v12, v4

    invoke-super/range {v8 .. v13}, Ljavafx/scene/control/PopupControl;->show(Ljavafx/stage/Window;DD)V

    .line 286
    .line 289
    .end local v6    # "scene":Ljavafx/scene/Scene;
    .end local v7    # "win":Ljavafx/stage/Window;
    :goto_3
    move-object v8, v0

    new-instance v9, Ljavafx/event/Event;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    sget-object v11, Ljavafx/scene/control/Menu;->ON_SHOWN:Ljavafx/event/EventType;

    invoke-direct {v10, v11}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v8, v9}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 290
    goto :goto_2

    .line 287
    :cond_3
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    invoke-super/range {v8 .. v13}, Ljavafx/scene/control/PopupControl;->show(Ljavafx/scene/Node;DD)V

    goto :goto_3
.end method


# virtual methods
.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuSkin;-><init>(Ljavafx/scene/control/ContextMenu;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ContextMenu;
    return-object v0
.end method

.method public final getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ContextMenu;->items:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ContextMenu;
    return-object v0
.end method

.method public final getOnAction()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ContextMenu;
    return-object v0
.end method

.method public hide()V
    .locals 6

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 300
    :cond_0
    move-object v1, v0

    new-instance v2, Ljavafx/event/Event;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Ljavafx/scene/control/Menu;->ON_HIDING:Ljavafx/event/EventType;

    invoke-direct {v3, v4}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v1, v2}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 301
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/PopupControl;->hide()V

    .line 302
    move-object v1, v0

    new-instance v2, Ljavafx/event/Event;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Ljavafx/scene/control/Menu;->ON_HIDDEN:Ljavafx/event/EventType;

    invoke-direct {v3, v4}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    invoke-static {v1, v2}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 303
    goto :goto_0
.end method

.method public final impl_showRelativeToWindowProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ContextMenu;->impl_showRelativeToWindow:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ContextMenu;
    return-object v0
.end method

.method public final isImpl_showRelativeToWindow()Z
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ContextMenu;->impl_showRelativeToWindow:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ContextMenu;
    return v0
.end method

.method public final onActionProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ContextMenu;->onAction:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ContextMenu;
    return-object v0
.end method

.method public final setImpl_showRelativeToWindow(Z)V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ContextMenu;->impl_showRelativeToWindow:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setOnAction(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ContextMenu;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public show(Ljavafx/scene/Node;DD)V
    .locals 12

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenu;
    move-object v1, p1

    .local v1, "anchor":Ljavafx/scene/Node;
    move-wide v2, p2

    .local v2, "screenX":D
    move-wide/from16 v4, p4

    .local v4, "screenY":D
    move-object v6, v1

    if-nez v6, :cond_0

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ContextMenu;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/Node;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 276
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/control/ContextMenu;->doShow(Ljavafx/scene/Node;DD)V

    .line 277
    goto :goto_0
.end method

.method public show(Ljavafx/scene/Node;Ljavafx/geometry/Side;DD)V
    .locals 23

    .prologue
    .line 248
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/ContextMenu;
    move-object/from16 v2, p1

    .local v2, "anchor":Ljavafx/scene/Node;
    move-object/from16 v3, p2

    .local v3, "side":Ljavafx/geometry/Side;
    move-wide/from16 v4, p3

    .local v4, "dx":D
    move-wide/from16 v6, p5

    .local v6, "dy":D
    move-object v11, v2

    if-nez v11, :cond_0

    .line 263
    :goto_0
    return-void

    .line 249
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-nez v11, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/control/ContextMenu;->getScene()Ljavafx/scene/Scene;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavafx/scene/Scene;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 255
    move-object v11, v3

    sget-object v12, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    if-ne v11, v12, :cond_2

    sget-object v11, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    :goto_1
    move-object v8, v11

    .line 256
    .local v8, "hpos":Ljavafx/geometry/HPos;
    move-object v11, v3

    sget-object v12, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-ne v11, v12, :cond_4

    sget-object v11, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    :goto_2
    move-object v9, v11

    .line 259
    .local v9, "vpos":Ljavafx/geometry/VPos;
    move-object v11, v2

    move-object v12, v1

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 260
    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/ContextMenu;->prefWidth(D)D

    move-result-wide v12

    move-object v14, v1

    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/control/ContextMenu;->prefHeight(D)D

    move-result-wide v14

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    const/16 v22, 0x1

    .line 259
    invoke-static/range {v11 .. v22}, Lcom/sun/javafx/util/Utils;->pointRelativeTo(Ljavafx/scene/Node;DDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;DDZ)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v10, v11

    .line 262
    .local v10, "point":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    move-object v13, v10

    invoke-virtual {v13}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v13

    move-object v15, v10

    invoke-virtual {v15}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v15

    invoke-direct/range {v11 .. v16}, Ljavafx/scene/control/ContextMenu;->doShow(Ljavafx/scene/Node;DD)V

    .line 263
    goto :goto_0

    .line 255
    .end local v8    # "hpos":Ljavafx/geometry/HPos;
    .end local v9    # "vpos":Ljavafx/geometry/VPos;
    .end local v10    # "point":Ljavafx/geometry/Point2D;
    :cond_2
    move-object v11, v3

    sget-object v12, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    if-ne v11, v12, :cond_3

    sget-object v11, Ljavafx/geometry/HPos;->RIGHT:Ljavafx/geometry/HPos;

    goto :goto_1

    :cond_3
    sget-object v11, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    goto :goto_1

    .line 256
    .restart local v8    # "hpos":Ljavafx/geometry/HPos;
    :cond_4
    move-object v11, v3

    sget-object v12, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-ne v11, v12, :cond_5

    sget-object v11, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    goto :goto_2

    :cond_5
    sget-object v11, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    goto :goto_2
.end method
