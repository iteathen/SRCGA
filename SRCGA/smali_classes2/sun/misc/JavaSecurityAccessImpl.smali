.class public Lsun/misc/JavaSecurityAccessImpl;
.super Ljava/lang/Object;
.source "JavaSecurityAccessImpl.java"

# interfaces
.implements Lsun/misc/JavaSecurityAccess;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lsun/misc/JavaSecurityAccessImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doIntersectionPrivilege(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "this":Lsun/misc/JavaSecurityAccessImpl;
    move-object v1, p1

    .local v1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    move-object v2, p2

    .local v2, "context":Ljava/security/AccessControlContext;
    move-object v3, v1

    invoke-interface {v3}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lsun/misc/JavaSecurityAccessImpl;
    return-object v0
.end method

.method public doIntersectionPrivilege(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 10
    move-object v0, p0

    .local v0, "this":Lsun/misc/JavaSecurityAccessImpl;
    move-object v1, p1

    .local v1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    move-object v2, p2

    .local v2, "stack":Ljava/security/AccessControlContext;
    move-object v3, p3

    .local v3, "context":Ljava/security/AccessControlContext;
    move-object v4, v1

    invoke-interface {v4}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lsun/misc/JavaSecurityAccessImpl;
    return-object v0
.end method
