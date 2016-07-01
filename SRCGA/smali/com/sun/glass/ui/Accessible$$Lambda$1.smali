.class final synthetic Lcom/sun/glass/ui/Accessible$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final arg$1:Lcom/sun/glass/ui/Accessible;

.field private final arg$2:Ljavafx/scene/AccessibleAttribute;

.field private final arg$3:[Ljava/lang/Object;

.field private final arg$4:Ljava/security/AccessControlContext;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/glass/ui/Accessible$$Lambda$1;->arg$1:Lcom/sun/glass/ui/Accessible;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/glass/ui/Accessible$$Lambda$1;->arg$2:Ljavafx/scene/AccessibleAttribute;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/glass/ui/Accessible$$Lambda$1;->arg$3:[Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/glass/ui/Accessible$$Lambda$1;->arg$4:Ljava/security/AccessControlContext;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/util/function/Supplier;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Lcom/sun/glass/ui/Accessible$$Lambda$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/Accessible$$Lambda$1;-><init>(Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)V

    move-object v0, v4

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/util/function/Supplier;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Lcom/sun/glass/ui/Accessible$$Lambda$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/Accessible$$Lambda$1;-><init>(Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Accessible$$Lambda$1;->arg$1:Lcom/sun/glass/ui/Accessible;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/Accessible$$Lambda$1;->arg$2:Ljavafx/scene/AccessibleAttribute;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Accessible$$Lambda$1;->arg$3:[Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Accessible$$Lambda$1;->arg$4:Ljava/security/AccessControlContext;

    invoke-static {v1, v2, v3, v4}, Lcom/sun/glass/ui/Accessible;->access$lambda$0(Lcom/sun/glass/ui/Accessible;Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
