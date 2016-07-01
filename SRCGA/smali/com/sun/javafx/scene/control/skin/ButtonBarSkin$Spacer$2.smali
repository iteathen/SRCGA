.class final enum Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;
.super Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
.source "ButtonBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;-><init>(Ljava/lang/String;ILcom/sun/javafx/scene/control/skin/ButtonBarSkin$1;)V

    return-void
.end method


# virtual methods
.method protected create(Z)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;
    move v1, p1

    .local v1, "edgeCase":Z
    new-instance v3, Ljavafx/scene/layout/Region;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v2, v3

    .line 348
    .local v2, "spacer":Ljavafx/scene/layout/Region;
    move-object v3, v2

    sget-object v4, Ljavafx/scene/control/ButtonBar$ButtonData;->BIG_GAP:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-static {v3, v4}, Ljavafx/scene/control/ButtonBar;->setButtonData(Ljavafx/scene/Node;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    .line 349
    move-object v3, v2

    move v4, v1

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/Region;->setMinWidth(D)V

    .line 350
    move-object v3, v2

    sget-object v4, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-static {v3, v4}, Ljavafx/scene/layout/HBox;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 351
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;
    return-object v0

    .line 349
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;
    :cond_0
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    goto :goto_0
.end method

.method public replace(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;)Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    .locals 4

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;
    move-object v1, p1

    .local v1, "spacer":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;->FIXED:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method
