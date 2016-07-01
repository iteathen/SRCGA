.class final synthetic Ljavafx/beans/property/adapter/JavaBeanLongProperty$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Ljavafx/beans/property/adapter/JavaBeanLongProperty;

.field private final arg$2:J


# direct methods
.method private constructor <init>(Ljavafx/beans/property/adapter/JavaBeanLongProperty;J)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/property/adapter/JavaBeanLongProperty$$Lambda$2;->arg$1:Ljavafx/beans/property/adapter/JavaBeanLongProperty;

    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/beans/property/adapter/JavaBeanLongProperty$$Lambda$2;->arg$2:J

    return-void
.end method

.method private static get$Lambda(Ljavafx/beans/property/adapter/JavaBeanLongProperty;J)Ljava/security/PrivilegedAction;
    .locals 9

    move-object v0, p0

    move-wide v1, p1

    new-instance v3, Ljavafx/beans/property/adapter/JavaBeanLongProperty$$Lambda$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/adapter/JavaBeanLongProperty$$Lambda$2;-><init>(Ljavafx/beans/property/adapter/JavaBeanLongProperty;J)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/beans/property/adapter/JavaBeanLongProperty;J)Ljava/security/PrivilegedAction;
    .locals 9

    move-object v0, p0

    move-wide v1, p1

    new-instance v3, Ljavafx/beans/property/adapter/JavaBeanLongProperty$$Lambda$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/adapter/JavaBeanLongProperty$$Lambda$2;-><init>(Ljavafx/beans/property/adapter/JavaBeanLongProperty;J)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanLongProperty$$Lambda$2;->arg$1:Ljavafx/beans/property/adapter/JavaBeanLongProperty;

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/beans/property/adapter/JavaBeanLongProperty$$Lambda$2;->arg$2:J

    invoke-static {v1, v2, v3}, Ljavafx/beans/property/adapter/JavaBeanLongProperty;->access$lambda$1(Ljavafx/beans/property/adapter/JavaBeanLongProperty;J)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
