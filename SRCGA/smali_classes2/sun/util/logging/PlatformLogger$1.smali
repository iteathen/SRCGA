.class final Lsun/util/logging/PlatformLogger$1;
.super Ljava/lang/Object;
.source "PlatformLogger.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$1;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$1;
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger$1;
    move-object v1, v0

    invoke-virtual {v1}, Lsun/util/logging/PlatformLogger$1;->run()Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lsun/util/logging/PlatformLogger$1;
    return-object v0
.end method
