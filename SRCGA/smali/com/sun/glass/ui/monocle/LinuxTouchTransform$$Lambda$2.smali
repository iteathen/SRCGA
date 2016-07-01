.class final synthetic Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;

.field private final arg$5:I

.field private final arg$6:D


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/monocle/LinuxTouchTransform;Ljava/lang/String;Ljava/lang/String;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;ID)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$1:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$2:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$3:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$4:Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;

    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$5:I

    move-object v8, v0

    move-wide v9, v6

    iput-wide v9, v8, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$6:D

    return-void
.end method

.method private static get$Lambda(Lcom/sun/glass/ui/monocle/LinuxTouchTransform;Ljava/lang/String;Ljava/lang/String;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;ID)Ljava/security/PrivilegedAction;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    new-instance v7, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    move-wide v14, v5

    invoke-direct/range {v8 .. v15}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;-><init>(Lcom/sun/glass/ui/monocle/LinuxTouchTransform;Ljava/lang/String;Ljava/lang/String;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;ID)V

    move-object v0, v7

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/glass/ui/monocle/LinuxTouchTransform;Ljava/lang/String;Ljava/lang/String;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;ID)Ljava/security/PrivilegedAction;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    new-instance v7, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    move-wide v14, v5

    invoke-direct/range {v8 .. v15}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;-><init>(Lcom/sun/glass/ui/monocle/LinuxTouchTransform;Ljava/lang/String;Ljava/lang/String;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;ID)V

    move-object v0, v7

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 8
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$1:Lcom/sun/glass/ui/monocle/LinuxTouchTransform;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$2:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$3:Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$4:Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$5:I

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/LinuxTouchTransform$$Lambda$2;->arg$6:D

    invoke-static/range {v1 .. v7}, Lcom/sun/glass/ui/monocle/LinuxTouchTransform;->access$lambda$1(Lcom/sun/glass/ui/monocle/LinuxTouchTransform;Ljava/lang/String;Ljava/lang/String;Lcom/sun/glass/ui/monocle/LinuxAbsoluteInputCapabilities;ID)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
