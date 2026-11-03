.class public Lcom/example/hello/Hello;
.super Landroid/app/Activity;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    return-void
.end method

.method public isPremium()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public checkIntegrity()V
    .locals 2
    new-instance v0, Ljava/lang/RuntimeException;
    const-string v1, "integrity fail"
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    const/4 v0, 0x0
    invoke-direct {p0, v0}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    new-instance v1, Landroid/widget/TextView;
    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/app/Activity;)V
    invoke-virtual {p0}, Lcom/example/hello/Hello;->isPremium()Z
    move-result v2
    if-eqz v2, :cond_0
    const-string v2, "FREE"
    goto :goto_0
    :cond_0
    const-string v2, "PREMIUM"
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/app/View;)V
    return-void
.end method
