.class enum Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
.super Ljava/lang/Enum;
.source "ButtonBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "Spacer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

.field public static final enum DYNAMIC:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

.field public static final enum FIXED:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

.field public static final enum NONE:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 335
    new-instance v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "FIXED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->FIXED:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    .line 345
    new-instance v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DYNAMIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->DYNAMIC:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    .line 358
    new-instance v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->NONE:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    .line 334
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->FIXED:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->DYNAMIC:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->NONE:Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->$VALUES:[Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sun/javafx/scene/control/skin/ButtonBarSkin$1;)V
    .locals 7

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move v2, p2

    .local v2, "x1":I
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$1;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    .locals 3

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->$VALUES:[Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    invoke-virtual {v0}, [Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;

    return-object v0
.end method


# virtual methods
.method public add(Ljavafx/scene/layout/Pane;Z)V
    .locals 6

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    move-object v1, p1

    .local v1, "pane":Ljavafx/scene/layout/Pane;
    move v2, p2

    .local v2, "edgeCase":Z
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;->create(Z)Ljavafx/scene/Node;

    move-result-object v4

    move-object v3, v4

    .line 370
    .local v3, "spacer":Ljavafx/scene/Node;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 371
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 373
    :cond_0
    return-void
.end method

.method protected create(Z)Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    move v1, p1

    .local v1, "edgeCase":Z
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    return-object v0
.end method

.method public replace(Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;)Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    .locals 3

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    move-object v1, p1

    .local v1, "spacer":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ButtonBarSkin$Spacer;
    return-object v0
.end method
