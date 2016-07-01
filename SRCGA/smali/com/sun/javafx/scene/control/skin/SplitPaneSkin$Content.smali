.class Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
.super Ljavafx/scene/layout/StackPane;
.source "SplitPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Content"
.end annotation


# instance fields
.field private area:D

.field private available:D

.field private clipRect:Ljavafx/scene/shape/Rectangle;

.field private content:Ljavafx/scene/Node;

.field private resizableWithParentArea:D

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(Ljavafx/scene/Node;)V
    .locals 7

    .prologue
    .line 1090
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v2, p1

    .local v2, "n":Ljavafx/scene/Node;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 1091
    move-object v3, v1

    new-instance v4, Ljavafx/scene/shape/Rectangle;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->clipRect:Ljavafx/scene/shape/Rectangle;

    .line 1092
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->clipRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->setClip(Ljavafx/scene/Node;)V

    .line 1093
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->content:Ljavafx/scene/Node;

    .line 1094
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1095
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1097
    :cond_0
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->x:D

    .line 1098
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->y:D

    .line 1099
    return-void
.end method


# virtual methods
.method protected computeMaxHeight(D)D
    .locals 9

    .prologue
    .line 1169
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->content:Ljavafx/scene/Node;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->snapSize(D)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    return-wide v1
.end method

.method protected computeMaxWidth(D)D
    .locals 9

    .prologue
    .line 1165
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->content:Ljavafx/scene/Node;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->snapSize(D)D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    return-wide v1
.end method

.method public getArea()D
    .locals 3

    .prologue
    .line 1124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->area:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    return-wide v0
.end method

.method public getAvailable()D
    .locals 3

    .prologue
    .line 1134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->available:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    return-wide v0
.end method

.method public getContent()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 1102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->content:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    return-object v0
.end method

.method public getResizableWithParentArea()D
    .locals 3

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->resizableWithParentArea:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    return-wide v0
.end method

.method public getX()D
    .locals 3

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->x:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    return-wide v0
.end method

.method public getY()D
    .locals 3

    .prologue
    .line 1114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->y:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    return-wide v0
.end method

.method public isResizableWithParent()Z
    .locals 2

    .prologue
    .line 1142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->content:Ljavafx/scene/Node;

    invoke-static {v1}, Ljavafx/scene/control/SplitPane;->isResizableWithParent(Ljavafx/scene/Node;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    return v0
.end method

.method public setArea(D)V
    .locals 7

    .prologue
    .line 1128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide v1, p1

    .local v1, "area":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->area:D

    .line 1129
    return-void
.end method

.method public setAvailable(D)V
    .locals 7

    .prologue
    .line 1138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide v1, p1

    .local v1, "available":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->available:D

    .line 1139
    return-void
.end method

.method protected setClipSize(DD)V
    .locals 9

    .prologue
    .line 1160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide v1, p1

    .local v1, "w":D
    move-wide v3, p3

    .local v3, "h":D
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 1161
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 1162
    return-void
.end method

.method public setResizableWithParentArea(D)V
    .locals 7

    .prologue
    .line 1152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide v1, p1

    .local v1, "resizableWithParentArea":D
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->isResizableWithParent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1153
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->resizableWithParentArea:D

    .line 1157
    :goto_0
    return-void

    .line 1155
    :cond_0
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->resizableWithParentArea:D

    goto :goto_0
.end method

.method public setX(D)V
    .locals 7

    .prologue
    .line 1110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->x:D

    .line 1111
    return-void
.end method

.method public setY(D)V
    .locals 7

    .prologue
    .line 1118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;
    move-wide v1, p1

    .local v1, "y":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin$Content;->y:D

    .line 1119
    return-void
.end method
