.class public Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "ScrollPaneBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/ScrollPane;",
        ">;"
    }
.end annotation


# static fields
.field static final HORIZONTAL_UNITDECREMENT:Ljava/lang/String; = "HorizontalUnitDecrement"

.field static final HORIZONTAL_UNITINCREMENT:Ljava/lang/String; = "HorizontalUnitIncrement"

.field protected static final SCROLL_PANE_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field

.field static final TRAVERSE_DEBUG:Ljava/lang/String; = "TraverseDebug"

.field static final VERTICAL_END:Ljava/lang/String; = "VerticalEnd"

.field static final VERTICAL_HOME:Ljava/lang/String; = "VerticalHome"

.field static final VERTICAL_PAGEDECREMENT:Ljava/lang/String; = "VerticalPageDecrement"

.field static final VERTICAL_PAGEINCREMENT:Ljava/lang/String; = "VerticalPageIncrement"

.field static final VERTICAL_UNITDECREMENT:Ljava/lang/String; = "VerticalUnitDecrement"

.field static final VERTICAL_UNITINCREMENT:Ljava/lang/String; = "VerticalUnitIncrement"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    .line 144
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->F4:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseDebug"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "HorizontalUnitDecrement"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "HorizontalUnitIncrement"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 149
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "VerticalUnitDecrement"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 150
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "VerticalUnitIncrement"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 152
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "VerticalPageDecrement"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 153
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "VerticalPageIncrement"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 154
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    const-string v4, "VerticalPageIncrement"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 156
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    const-string v4, "VerticalHome"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    const-string v4, "VerticalEnd"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 158
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ScrollPane;)V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, p1

    .local v1, "scrollPane":Ljavafx/scene/control/ScrollPane;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->SCROLL_PANE_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    move-object v2, v4

    const/4 v4, -0x1

    move v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 204
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    .line 207
    :goto_1
    return-void

    .line 178
    :sswitch_0
    move-object v4, v2

    const-string v5, "HorizontalUnitDecrement"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    :sswitch_1
    move-object v4, v2

    const-string v5, "HorizontalUnitIncrement"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v3, v4

    goto :goto_0

    :sswitch_2
    move-object v4, v2

    const-string v5, "VerticalUnitDecrement"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    move v3, v4

    goto :goto_0

    :sswitch_3
    move-object v4, v2

    const-string v5, "VerticalUnitIncrement"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    move v3, v4

    goto :goto_0

    :sswitch_4
    move-object v4, v2

    const-string v5, "VerticalPageDecrement"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    move v3, v4

    goto :goto_0

    :sswitch_5
    move-object v4, v2

    const-string v5, "VerticalPageIncrement"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    move v3, v4

    goto :goto_0

    :sswitch_6
    move-object v4, v2

    const-string v5, "VerticalHome"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    move v3, v4

    goto :goto_0

    :sswitch_7
    move-object v4, v2

    const-string v5, "VerticalEnd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    move v3, v4

    goto :goto_0

    .line 180
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->horizontalUnitDecrement()V

    .line 181
    goto :goto_1

    .line 183
    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->horizontalUnitIncrement()V

    .line 184
    goto :goto_1

    .line 186
    :pswitch_2
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->verticalUnitDecrement()V

    .line 187
    goto :goto_1

    .line 189
    :pswitch_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->verticalUnitIncrement()V

    .line 190
    goto :goto_1

    .line 192
    :pswitch_4
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->verticalPageDecrement()V

    .line 193
    goto :goto_1

    .line 195
    :pswitch_5
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->verticalPageIncrement()V

    .line 196
    goto :goto_1

    .line 198
    :pswitch_6
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->verticalHome()V

    .line 199
    goto/16 :goto_1

    .line 201
    :pswitch_7
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->verticalEnd()V

    .line 202
    goto/16 :goto_1

    .line 178
    :sswitch_data_0
    .sparse-switch
        -0x52d16399 -> :sswitch_1
        -0x34be1087 -> :sswitch_2
        -0x2f28de56 -> :sswitch_5
        -0x20c96a9b -> :sswitch_7
        0x79d7995 -> :sswitch_6
        0x20eddd8b -> :sswitch_0
        0x449662ce -> :sswitch_4
        0x5782ae55 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public contentDragged(DD)V
    .locals 11

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-wide v1, p1

    .local v1, "deltaX":D
    move-wide v3, p3

    .local v3, "deltaY":D
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollPane;

    move-object v5, v6

    .line 112
    .local v5, "scroll":Ljavafx/scene/control/ScrollPane;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->isPannable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    move-wide v6, v1

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->getHvalue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    :cond_1
    move-wide v6, v1

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->getHvalue()D

    move-result-wide v6

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getHmax()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_3

    .line 114
    :cond_2
    move-object v6, v5

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollPane;->getHvalue()D

    move-result-wide v7

    move-wide v9, v1

    add-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/ScrollPane;->setHvalue(D)V

    .line 116
    :cond_3
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->getVvalue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_5

    :cond_4
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollPane;->getVvalue()D

    move-result-wide v6

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getVmax()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_6

    .line 117
    :cond_5
    move-object v6, v5

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollPane;->getVvalue()D

    move-result-wide v7

    move-wide v9, v3

    add-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/ScrollPane;->setVvalue(D)V

    .line 119
    :cond_6
    goto :goto_0
.end method

.method horizontalPageDecrement()V
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbPageDecrement()V

    .line 90
    return-void
.end method

.method horizontalPageIncrement()V
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbPageIncrement()V

    .line 87
    return-void
.end method

.method public horizontalUnitDecrement()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbDecrement()V

    .line 78
    return-void
.end method

.method public horizontalUnitIncrement()V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsbIncrement()V

    .line 75
    return-void
.end method

.method protected matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 163
    .local v2, "action":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 164
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_1

    .line 165
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_0

    .line 166
    const-string v3, "HorizontalUnitIncrement"

    move-object v2, v3

    .line 174
    :cond_0
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    return-object v0

    .line 168
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_0

    .line 169
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_0

    .line 170
    const-string v3, "HorizontalUnitDecrement"

    move-object v2, v3

    goto :goto_0
.end method

.method public mouseClicked()V
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->requestFocus()V

    .line 217
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 221
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->requestFocus()V

    .line 222
    return-void
.end method

.method verticalEnd()V
    .locals 6

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollPane;

    move-object v2, v3

    .line 104
    .local v2, "sp":Ljavafx/scene/control/ScrollPane;
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getHmax()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollPane;->setHvalue(D)V

    .line 105
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getVmax()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollPane;->setVvalue(D)V

    .line 106
    return-void
.end method

.method verticalHome()V
    .locals 6

    .prologue
    .line 98
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollPane;

    move-object v2, v3

    .line 99
    .local v2, "sp":Ljavafx/scene/control/ScrollPane;
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getHmin()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollPane;->setHvalue(D)V

    .line 100
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollPane;->getVmin()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ScrollPane;->setVvalue(D)V

    .line 101
    return-void
.end method

.method verticalPageDecrement()V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbPageDecrement()V

    .line 96
    return-void
.end method

.method verticalPageIncrement()V
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbPageIncrement()V

    .line 93
    return-void
.end method

.method verticalUnitDecrement()V
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbDecrement()V

    .line 84
    return-void
.end method

.method public verticalUnitIncrement()V
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollPaneBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane;

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsbIncrement()V

    .line 81
    return-void
.end method
