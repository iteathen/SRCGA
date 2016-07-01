.class public Ljavafx/beans/value/WritableDoubleValue$;
.super Ljava/lang/Object;
.source "WritableDoubleValue.java"

# interfaces
.implements Ljavafx/beans/value/WritableNumberValue;


# direct methods
.method public static bridge synthetic setValue(Ljavafx/beans/value/WritableDoubleValue;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/value/WritableDoubleValue;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-interface {v2, v3}, Ljavafx/beans/value/WritableDoubleValue;->setValue(Ljava/lang/Number;)V

    return-void
.end method
