.class public Lsun/misc/SharedSecrets;
.super Ljava/lang/Object;
.source "SharedSecrets.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lsun/misc/SharedSecrets;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavaSecurityAccess()Lsun/misc/JavaSecurityAccess;
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lsun/misc/JavaSecurityAccessImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lsun/misc/JavaSecurityAccessImpl;-><init>()V

    return-object v0
.end method
