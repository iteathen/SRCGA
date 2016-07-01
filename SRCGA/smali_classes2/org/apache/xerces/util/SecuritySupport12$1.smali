.class Lorg/apache/xerces/util/SecuritySupport12$1;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xerces/util/SecuritySupport12;->getContextClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xerces/util/SecuritySupport12;


# direct methods
.method constructor <init>(Lorg/apache/xerces/util/SecuritySupport12;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12$1;
    move-object v1, p1

    .local v1, "this$0":Lorg/apache/xerces/util/SecuritySupport12;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/SecuritySupport12$1;->this$0:Lorg/apache/xerces/util/SecuritySupport12;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12$1;
    const/4 v3, 0x0

    move-object v1, v3

    .line 80
    .local v1, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 81
    .line 82
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12$1;
    return-object v0

    .line 81
    .restart local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12$1;
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method
