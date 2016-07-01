.class final synthetic Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

.field private final arg$2:D

.field private final arg$3:D


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;DD)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;->arg$1:Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

    move-object v6, v0

    move-wide v7, v2

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;->arg$2:D

    move-object v6, v0

    move-wide v7, v4

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;->arg$3:D

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;DD)Ljava/lang/Runnable;
    .locals 13

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    new-instance v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;DD)V

    move-object v0, v5

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;DD)Ljava/lang/Runnable;
    .locals 13

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    new-instance v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;DD)V

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;->arg$1:Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;->arg$2:D

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;->arg$3:D

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->access$lambda$5(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;DD)V

    return-void
.end method
