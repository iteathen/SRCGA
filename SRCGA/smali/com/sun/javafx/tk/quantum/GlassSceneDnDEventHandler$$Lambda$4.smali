.class final synthetic Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:I

.field private final arg$6:Ljavafx/scene/input/TransferMode;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;IIIILjavafx/scene/input/TransferMode;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$1:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$2:I

    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$3:I

    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$4:I

    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$5:I

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$6:Ljavafx/scene/input/TransferMode;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;IIIILjavafx/scene/input/TransferMode;)Ljava/security/PrivilegedAction;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    new-instance v6, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;-><init>(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;IIIILjavafx/scene/input/TransferMode;)V

    move-object v0, v6

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;IIIILjavafx/scene/input/TransferMode;)Ljava/security/PrivilegedAction;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    new-instance v6, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;-><init>(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;IIIILjavafx/scene/input/TransferMode;)V

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$1:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$2:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$3:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$4:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$5:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->arg$6:Ljavafx/scene/input/TransferMode;

    invoke-static/range {v1 .. v6}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->access$lambda$3(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
