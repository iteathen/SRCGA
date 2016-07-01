.class public Ljavafx/beans/value/WritableBooleanValue$;
.super Ljava/lang/Object;
.source "WritableBooleanValue.java"

# interfaces
.implements Ljavafx/beans/value/WritableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/WritableValue",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic setValue(Ljavafx/beans/value/WritableBooleanValue;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/value/WritableBooleanValue;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Ljavafx/beans/value/WritableBooleanValue;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method
