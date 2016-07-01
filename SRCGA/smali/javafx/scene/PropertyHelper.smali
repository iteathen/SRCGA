.class Ljavafx/scene/PropertyHelper;
.super Ljava/lang/Object;
.source "PropertyHelper.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PropertyHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/PropertyHelper;->lambda$getBooleanProperty$498(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static getBooleanProperty(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "propName":Ljava/lang/String;
    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Ljavafx/scene/PropertyHelper$$Lambda$1;->lambdaFactory$(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v2

    .line 37
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v1, v2

    .line 41
    .local v1, "answer":Z
    move v2, v1

    move v0, v2

    .line 44
    .end local v0    # "propName":Ljava/lang/String;
    :goto_0
    return v0

    .line 42
    .end local v1    # "answer":Z
    .restart local v0    # "propName":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 44
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private static synthetic lambda$getBooleanProperty$498(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "propName":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 39
    .local v1, "propVal":Ljava/lang/String;
    const-string v2, "true"

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "propName":Ljava/lang/String;
    return-object v0
.end method
