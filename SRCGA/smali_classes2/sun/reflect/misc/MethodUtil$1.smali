.class final Lsun/reflect/misc/MethodUtil$1;
.super Ljava/lang/Object;
.source "MethodUtil.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/reflect/misc/MethodUtil;->getTrampoline()Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil$1;
    move-object v1, v0

    invoke-virtual {v1}, Lsun/reflect/misc/MethodUtil$1;->run()Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lsun/reflect/misc/MethodUtil$1;
    return-object v0
.end method

.method public run()Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil$1;
    # invokes: Lsun/reflect/misc/MethodUtil;->getTrampolineClass()Ljava/lang/Class;
    invoke-static {}, Lsun/reflect/misc/MethodUtil;->access$000()Ljava/lang/Class;

    move-result-object v4

    move-object v1, v4

    .line 307
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-class v7, Ljava/lang/reflect/Method;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    const-class v7, [Ljava/lang/Object;

    aput-object v7, v5, v6

    move-object v2, v4

    .line 310
    .local v2, "types":[Ljava/lang/Class;
    move-object v4, v1

    const-string v5, "invoke"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v3, v4

    .line 311
    .local v3, "b":Ljava/lang/reflect/Method;
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 312
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lsun/reflect/misc/MethodUtil$1;
    return-object v0
.end method
